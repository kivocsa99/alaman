import 'package:alaman/application/provider/hive.setting.provider.dart';
import 'package:alaman/presentation/widgets/auth_container.dart';
import 'package:alaman/routes/app_route.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class MainScreen extends HookConsumerWidget {
  final bool? isOrdered;
  const MainScreen({super.key, this.isOrdered = false});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      if (isOrdered == true) {
        // Show dialog if isOrdered is true
        WidgetsBinding.instance.addPostFrameCallback((_) {
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) => AlertDialog(
              title: SizedBox(
                height: 100,
                width: 100,
                child: SvgPicture.asset("assets/try1.svg"),
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Request successful",
                    style: Theme.of(context)
                        .primaryTextTheme
                        .bodyMedium!
                        .copyWith(color: const Color(0xff16437B)),
                  ),
                  AuthContainer(
                    raduis: 50,
                    height: 50,
                    onTap: () async {
                      context.router.pop();
                    },
                    color: const Color(0xffFFC629),
                    child: Text(
                      "Back to Home Screen",
                      style: Theme.of(context)
                          .primaryTextTheme
                          .titleSmall
                          ?.copyWith(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
      }
      return null; // Return a null cleanup function
    }, [isOrdered]);
    final userSetting = ref.watch(settingHiveNotifierProvider);
    print(userSetting?.role);
    return AutoTabsRouter(
      routes: userSetting?.role == "Beneficiary"
          ? const [
              HomeRoute(),
              GrantsRoute(),
              ProfileRoute(),
            ]
          : const [
              HomeRoute(),
              GrantsRoute(),
              LocationRoute(),
              ProfileRoute(),
            ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);

        return SafeArea(
          child: Scaffold(
            extendBody: true,
            resizeToAvoidBottomInset: false,
            body: child,
            bottomNavigationBar: BottomNavigationBar(
              showUnselectedLabels: true,
              currentIndex: tabsRouter.activeIndex,
              unselectedFontSize: 12,
              selectedFontSize: 12,
              onTap: tabsRouter.setActiveIndex,
              items: userSetting?.role == "Beneficiary"
                  ? [
                      BottomNavigationBarItem(
                          label: 'home'.tr(),
                          icon: const Icon(
                            Icons.home_outlined,
                          )),
                      BottomNavigationBarItem(
                          label: 'grants'.tr(),
                          icon: const Icon(Icons.diversity_1)),
                      BottomNavigationBarItem(
                          label: 'profile'.tr(),
                          icon: const Icon(FontAwesomeIcons.user)),
                    ]
                  : [
                      BottomNavigationBarItem(
                          label: 'home'.tr(),
                          icon: const Icon(
                            Icons.home_outlined,
                          )),
                      BottomNavigationBarItem(
                          label: 'donate'.tr(),
                          icon: const Icon(Icons.diversity_1)),
                      BottomNavigationBarItem(
                          label: 'location'.tr(),
                          icon: const Icon(Icons.location_on_outlined)),
                      BottomNavigationBarItem(
                          label: 'profile'.tr(),
                          icon: const Icon(FontAwesomeIcons.user)),
                    ],
            ),
          ),
        );
      },
    );
  }
}
