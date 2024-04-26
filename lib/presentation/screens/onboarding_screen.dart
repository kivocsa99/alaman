import 'package:alaman/application/provider/hive.login.provider.dart';
import 'package:alaman/application/provider/hive.register.provider.dart';
import 'package:alaman/application/provider/hive.setting.provider.dart';
import 'package:alaman/domain/userregistration/user.registration.model.dart';
import 'package:alaman/domain/usersetting/model/user.setting.model.dart';
import 'package:alaman/presentation/widgets/onboarding_steps.dart';
import 'package:alaman/presentation/widgets/responsive_widget.dart';
import 'package:alaman/presentation/widgets/welcome_widget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class OnBoardingScreen extends HookConsumerWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final box = ref.watch(settingHiveNotifierProvider);
    final selectedIndex = useState(box?.isLoggedIn == null ? 0 : 3);
    final pageController = usePageController(initialPage: box?.isLoggedIn == null ? 0 : 3);

    return SafeArea(
      child: Scaffold(
        body: ResponsiveWidget(
          child: Padding(
            padding: const EdgeInsets.only(top: 50, bottom: 10),
            child: ResponsiveRowColumn(
              layout: ResponsiveRowColumnType.COLUMN,
              columnMainAxisAlignment: MainAxisAlignment.start,
              children: [
                ResponsiveRowColumnItem(
                  child: SizedBox(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height < 800 ? MediaQuery.of(context).size.height - 100 : MediaQuery.of(context).size.height / 1.4,
                    child: PageView.builder(
                      controller: pageController,
                      itemCount: 4,
                      onPageChanged: (index) async {
                        selectedIndex.value = index;
                        if (selectedIndex.value == 2) {
                          final usersetting = UserSettings()..isFirstTime = true;
                          ref.read(settingHiveNotifierProvider.notifier).addItem(usersetting);
                          final userRegister = UserRegistration();
                          ref.read(registerHiveNotifierProvider.notifier).addItem(userRegister);
                          ref.read(loginHiveNotifierProvider.notifier).addItem(userRegister);
                        }
                      },
                      itemBuilder: (context, index) {
                        return index <= 2
                            ? OnBoardingSteps(
                                index: index,
                                next: () async {
                                  if (selectedIndex.value == 2) {
                                    final usersetting = UserSettings()..isFirstTime = true;
                                    ref.read(settingHiveNotifierProvider.notifier).addItem(usersetting);
                                    final userRegister = UserRegistration();
                                    ref.read(registerHiveNotifierProvider.notifier).addItem(userRegister);
                                    ref.read(loginHiveNotifierProvider.notifier).addItem(userRegister);
                                  }
                                  if (selectedIndex.value < 3) {
                                    pageController.nextPage(
                                      duration: const Duration(milliseconds: 400),
                                      curve: Curves.easeInOut,
                                    );
                                  }
                                })
                            : const WelcomeWidget();
                      },
                    ),
                  ),
                ),
                ResponsiveRowColumnItem(
                  columnFit: FlexFit.tight,
                  child: Align(
                    alignment: FractionalOffset.bottomCenter,
                    child: Container(
                      height: 80,
                      width: double.infinity,
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: ResponsiveRowColumn(
                        layout: ResponsiveRowColumnType.COLUMN,
                        children: [
                          ResponsiveRowColumnItem(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(
                                  4,
                                  (index) => Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: AnimatedContainer(
                                          duration: const Duration(milliseconds: 500),
                                          height: 8,
                                          width: 80,
                                          decoration: BoxDecoration(
                                              borderRadius: selectedIndex.value == index ? BorderRadius.circular(25) : BorderRadius.circular(50),
                                              shape: BoxShape.rectangle,
                                              color: selectedIndex.value == index ? const Color(0xff5FBDFF) : const Color(0xffB8E2FF)),
                                        ),
                                      )),
                            ),
                          ),
                          const ResponsiveRowColumnItem(child: Gap(10)),
                          ResponsiveRowColumnItem(
                            child: ResponsiveRowColumn(
                              layout: ResponsiveRowColumnType.ROW,
                              rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ResponsiveRowColumnItem(
                                  child: GestureDetector(
                                    onTap: () async {
                                      if (!await launchUrl(Uri.parse("https://alamanfund.jo/app/terms/"))) {
                                        throw Exception('Could not launch ');
                                      }
                                    },
                                    child: Container(
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade300,
                                        ),
                                        height: 40,
                                        width: 150,
                                        child: Text("termsofuse", style: Theme.of(context).primaryTextTheme.titleSmall).tr()),
                                  ),
                                ),
                                ResponsiveRowColumnItem(
                                  child: GestureDetector(
                                    onTap: () async {
                                      if (!await launchUrl(Uri.parse("https://alamanfund.jo/app/privacy/"))) {
                                        throw Exception('Could not launch ');
                                      }
                                    },
                                    child: Container(
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          color: Colors.grey.shade300,
                                        ),
                                        height: 40,
                                        width: 150,
                                        child: Text("privacypolicy", style: Theme.of(context).primaryTextTheme.titleSmall).tr()),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
