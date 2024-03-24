import 'dart:math';

import 'package:alaman/application/provider/auth.repository.provider.dart';
import 'package:alaman/application/provider/hive.setting.provider.dart';
import 'package:alaman/application/provider/user.repository.provider.dart';
import 'package:alaman/presentation/widgets/auth_container.dart';
import 'package:alaman/presentation/widgets/custom_appbar.dart';
import 'package:alaman/presentation/widgets/responsive_widget.dart';
import 'package:alaman/routes/app_route.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class ProfileScreen extends HookConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profile = ref.watch(getProfileProvider);

    final setting = ref.read(settingHiveNotifierProvider);
    Random random = Random();
    int randomNumber = random.nextInt(3);
    final colorsList = useState<List<Color>>([
      const Color(0xff4379BD),
      const Color(0xffFEE596),
      const Color(0xff93C1E8),
    ]);
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(
          title: "Profile",
          description: "Your Profile",
        ),
        body: profile.when(
            data: (data) => data.fold(
                    (l) => Text(
                        l.message ?? "Please check your internet connection"),
                    (r) {
                  var model = r;
                  return ResponsiveWidget(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: ListView(
                        children: [
                          const Gap(50),
                          Stack(
                            alignment: Alignment.topCenter,
                            clipBehavior: Clip.none,
                            children: <Widget>[
                              Container(
                                width: double.infinity,
                                padding: const EdgeInsets.symmetric(
                                  vertical: 30,
                                  horizontal: 20,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    const Gap(30),
                                    Text(
                                      setting?.role == "Beneficiary"
                                          ? model.name!
                                          : model.User.name,
                                      style: Theme.of(context)
                                          .primaryTextTheme
                                          .bodyMedium
                                          ?.copyWith(
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold,
                                              color: const Color(0xff16437B)),
                                    ),
                                    const Gap(10),
                                    if (setting?.role == "Beneficiary")
                                      HtmlWidget(model.bio ?? ""),
                                    if (setting?.role != "Beneficiary")
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20.0, vertical: 10),
                                        child: ResponsiveRowColumn(
                                          layout: ResponsiveRowColumnType.ROW,
                                          rowMainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            ResponsiveRowColumnItem(
                                                child: ResponsiveRowColumn(
                                              columnMainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              layout: ResponsiveRowColumnType
                                                  .COLUMN,
                                              children: [
                                                ResponsiveRowColumnItem(
                                                    child: Text(
                                                  r.beneficiaries.length
                                                      .toString(),
                                                  style: Theme.of(context)
                                                      .primaryTextTheme
                                                      .bodyLarge,
                                                )),
                                                ResponsiveRowColumnItem(
                                                    child: Text(
                                                  "Beneficiaries",
                                                  style: Theme.of(context)
                                                      .primaryTextTheme
                                                      .bodyMedium,
                                                )),
                                              ],
                                            )),
                                            ResponsiveRowColumnItem(
                                                child: Container(
                                              width: 2,
                                              height: 50,
                                              color:
                                                  Colors.grey.withOpacity(0.3),
                                            )),
                                            ResponsiveRowColumnItem(
                                                child: ResponsiveRowColumn(
                                              columnMainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              layout: ResponsiveRowColumnType
                                                  .COLUMN,
                                              children: [
                                                ResponsiveRowColumnItem(
                                                    child: Text(
                                                  r.User.total_donation_amount
                                                      .toString(),
                                                  style: Theme.of(context)
                                                      .primaryTextTheme
                                                      .bodyLarge,
                                                )),
                                                ResponsiveRowColumnItem(
                                                    child: Text(
                                                  "Total Giving",
                                                  style: Theme.of(context)
                                                      .primaryTextTheme
                                                      .bodyMedium,
                                                )),
                                              ],
                                            )),
                                          ],
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                              Positioned(
                                top: -30,
                                child: Container(
                                  width: 70,
                                  height: 70,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.red),
                                ),
                              ),
                            ],
                          ),
                          const Gap(20),
                          AuthContainer(
                            color: setting?.role == "Beneficiary"
                                ? const Color(0xffFFC629)
                                : const Color(0xff2A7DE1),
                            height: 50,
                            raduis: 40,
                            onTap: () => setting?.role == "Beneficiary"
                                ? context.router.push(YourGrantsRoute())
                                : context.router.push(YourBeneficiariesRoute(
                                    beneficiary: r.beneficiaries)),
                            alignment: Alignment.centerLeft,
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/love.png",
                                  scale: 3,
                                ),
                                const Gap(10),
                                Text(
                                  setting?.role == "Beneficiary"
                                      ? "Manage Grants"
                                      : setting?.role == "Donor"
                                          ? "Your Beneficiaries"
                                          : "Manage MOU",
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .titleSmall!
                                      .copyWith(
                                          color: Colors.white, fontSize: 16),
                                )
                              ],
                            ),
                          ),
                          const Gap(20),
                          ListTile(
                            title: Text(
                              "Profile Details",
                              style: Theme.of(context)
                                  .primaryTextTheme
                                  .bodyMedium
                                  ?.copyWith(color: const Color(0xff18447B)),
                            ),
                            leading: const Icon(
                              Icons.person,
                              color: Color(0xff18447B),
                            ),
                            trailing: const Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xff18447B),
                            ),
                          ),
                          if (setting?.role != "Beneficiary") const Gap(10),
                          if (setting?.role != "Beneficiary")
                            ListTile(
                              title: Text(
                                "Scheduled Donations",
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .bodyMedium
                                    ?.copyWith(color: const Color(0xff18447B)),
                              ),
                              leading: const Icon(
                                Icons.calendar_month,
                                color: Color(0xff18447B),
                              ),
                              trailing: const Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xff18447B),
                              ),
                            ),
                          if (setting?.role != "Beneficiary") const Gap(10),
                          if (setting?.role != "Beneficiary")
                            ListTile(
                              onTap: () => context.router.push(
                                  PaymentHistoryRoute(
                                      donationHistory:
                                          r.User.donor_donation ?? [])),
                              title: Text(
                                "History",
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .bodyMedium
                                    ?.copyWith(color: const Color(0xff18447B)),
                              ),
                              leading: const Icon(
                                Icons.history,
                                color: Color(0xff18447B),
                              ),
                              trailing: const Icon(
                                Icons.arrow_forward_ios,
                                color: Color(0xff18447B),
                              ),
                            ),
                          const Gap(10),
                          ListTile(
                            onTap: () async {
                              if (!await launchUrl(
                                  Uri.parse("https://alamanfund.jo/contact"))) {
                                throw Exception('Could not launch ');
                              }
                              // Execute logout logic first, ensuring Hive boxes are cleared.
                              // await ref.read(logOutProvider.future).then(
                              //     (value) async => await context.router
                              //         .replaceAll([const OnBoardingRoute()]));
                            },
                            title: Text(
                              "Help",
                              style: Theme.of(context)
                                  .primaryTextTheme
                                  .bodyMedium
                                  ?.copyWith(color: const Color(0xff18447B)),
                            ),
                            leading: const Icon(
                              Icons.help,
                              color: Color(0xff18447B),
                            ),
                            trailing: const Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xff18447B),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
            error: (error, stackTrace) {
              print(stackTrace);
              print(error);
              return Text(error.toString());
            },
            loading: () => const CircularProgressIndicator()),
      ),
    );
  }
}
