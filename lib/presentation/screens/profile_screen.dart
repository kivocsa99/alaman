import 'dart:math';

import 'package:alaman/application/provider/hive.setting.provider.dart';
import 'package:alaman/application/provider/language.provider.dart';
import 'package:alaman/application/provider/user.repository.provider.dart';
import 'package:alaman/constants.dart';
import 'package:alaman/presentation/screens/filtered_screen.dart';
import 'package:alaman/presentation/screens/tax_details_screen.dart';
import 'package:alaman/presentation/screens/tax_history_screen.dart';
import 'package:alaman/presentation/widgets/auth_container.dart';
import 'package:alaman/presentation/widgets/custom_appbar.dart';
import 'package:alaman/presentation/widgets/responsive_widget.dart';
import 'package:alaman/routes/app_route.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
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
    final locale = ref.watch(languageHiveNotifierProvider);

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
          notMain: false,
          title: "profile",
          description: "yourprofile",
        ),
        body: profile.when(
            data: (data) => data.fold((l) => Text(l.message ?? "internetconnection").tr(), (r) {
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
                                          ? locale == "en"
                                              ? model.name!
                                              : model.name_ar!
                                          : model.User.name,
                                      style: Theme.of(context).primaryTextTheme.bodyMedium?.copyWith(fontSize: 24, fontWeight: FontWeight.bold, color: const Color(0xff16437B)),
                                    ),
                                    const Gap(10),
                                    if (setting?.role == "Beneficiary") HtmlWidget(locale == "en" ? model.bio ?? "" : model.bio_ar ?? ""),
                                    if (setting?.role != "Beneficiary")
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                                        child: ResponsiveRowColumn(
                                          layout: ResponsiveRowColumnType.ROW,
                                          rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            ResponsiveRowColumnItem(
                                                child: ResponsiveRowColumn(
                                              columnMainAxisAlignment: MainAxisAlignment.center,
                                              layout: ResponsiveRowColumnType.COLUMN,
                                              children: [
                                                ResponsiveRowColumnItem(
                                                    child: Text(
                                                  r.beneficiaries.length.toString(),
                                                  style: Theme.of(context).primaryTextTheme.bodyLarge,
                                                )),
                                                ResponsiveRowColumnItem(
                                                    child: Text(
                                                  "beneficiaries",
                                                  style: Theme.of(context).primaryTextTheme.bodyMedium,
                                                ).tr()),
                                              ],
                                            )),
                                            ResponsiveRowColumnItem(
                                                child: Container(
                                              width: 2,
                                              height: 50,
                                              color: Colors.grey.withOpacity(0.3),
                                            )),
                                            ResponsiveRowColumnItem(
                                                child: ResponsiveRowColumn(
                                              columnMainAxisAlignment: MainAxisAlignment.center,
                                              layout: ResponsiveRowColumnType.COLUMN,
                                              children: [
                                                ResponsiveRowColumnItem(
                                                    child: Text(
                                                  r.User.total_donation_amount.toString(),
                                                  style: Theme.of(context).primaryTextTheme.bodyLarge,
                                                )),
                                                ResponsiveRowColumnItem(
                                                    child: Text(
                                                  "totalgiving",
                                                  style: Theme.of(context).primaryTextTheme.bodyMedium,
                                                ).tr()),
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
                                  padding: EdgeInsets.only(top: 10),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      gradient: LinearGradient(
                                        begin: Alignment.bottomCenter,
                                        end: Alignment.topCenter,
                                        stops: [0, 5],
                                        colors: [
                                          // Brighten function is not native, you'd have to implement it
                                          Colors.white,
                                          colorsList.value[randomNumber].brighten(5).withOpacity(0.3),
                                        ],
                                      )),
                                  child: setting?.role == "Beneficiary"
                                      ? model!.image != null
                                          ? CachedNetworkImage(
                                              imageUrl: "$storageUrl/${model.image}",
                                              placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
                                              errorWidget: (context, url, error) => const Icon(Icons.error),
                                              imageBuilder: (context, imageProvider) => Container(
                                                width: 70,
                                                height: 70,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  image: DecorationImage(
                                                    image: imageProvider,
                                                    scale: 2.5,
                                                    fit: BoxFit.contain, // Adjust to your needs
                                                  ),
                                                ),
                                              ),
                                            )
                                          : const Icon(
                                              Icons.person,
                                              color: Colors.white,
                                            )
                                      : Container(),
                                ),
                              ),
                            ],
                          ),
                          const Gap(20),
                          AuthContainer(
                            color: setting?.role == "Beneficiary" ? const Color(0xffFFC629) : const Color(0xff2A7DE1),
                            height: 50,
                            raduis: 40,
                            onTap: () => setting?.role == "Beneficiary" ? context.router.push(YourGrantsRoute()) : context.router.push(YourBeneficiariesRoute(beneficiary: r.beneficiaries)),
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
                                      ? "managegrants"
                                      : setting?.role == "Donor"
                                          ? "yourbeneficairies"
                                          : "manageagreement",
                                  style: Theme.of(context).primaryTextTheme.titleSmall!.copyWith(color: Colors.white, fontSize: 16),
                                ).tr()
                              ],
                            ),
                          ),
                          const Gap(20),
                          ListTile(
                            onTap: () => context.router.push(ProfileDetailsRoute()),
                            title: Text(
                              "profiledetails",
                              style: Theme.of(context).primaryTextTheme.bodyMedium?.copyWith(color: const Color(0xff18447B)),
                            ).tr(),
                            leading: const Icon(
                              Icons.person,
                              color: Color(0xff18447B),
                            ),
                            trailing: const Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xff18447B),
                            ),
                          ),
                          // if (setting?.role != "Beneficiary") const Gap(10),
                          // if (setting?.role != "Beneficiary")
                          //   ListTile(
                          //     title: Text(
                          //       "Scheduled Donations",
                          //       style: Theme.of(context)
                          //           .primaryTextTheme
                          //           .bodyMedium
                          //           ?.copyWith(color: const Color(0xff18447B)),
                          //     ),
                          //     leading: const Icon(
                          //       Icons.calendar_month,
                          //       color: Color(0xff18447B),
                          //     ),
                          //     trailing: const Icon(
                          //       Icons.arrow_forward_ios,
                          //       color: Color(0xff18447B),
                          //     ),
                          //   ),
                          if (setting?.role != "Beneficiary") const Gap(10),
                          if (setting?.role != "Beneficiary")
                            ListTile(
                              onTap: () => context.router.push(PaymentHistoryRoute(donationHistory: r.User.donor_donations)),
                              title: Text(
                                "paymenthistory",
                                style: Theme.of(context).primaryTextTheme.bodyMedium?.copyWith(color: const Color(0xff18447B)),
                              ).tr(),
                              leading: const Icon(
                                Icons.history,
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
                              onTap: () => context.router.push(TaxHistoryRoute()),
                              title: Text(
                                "taxhistory",
                                style: Theme.of(context).primaryTextTheme.bodyMedium?.copyWith(color: const Color(0xff18447B)),
                              ).tr(),
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
                            onTap: () async => await context.router.push(LanguageRoute()),
                            title: Text(
                              "language",
                              style: Theme.of(context).primaryTextTheme.bodyMedium?.copyWith(color: const Color(0xff18447B)),
                            ).tr(),
                            leading: const Icon(
                              Icons.language,
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
                              if (!await launchUrl(Uri.parse("https://alamanfund.jo/contact"))) {
                                throw Exception('Could not launch ');
                              }
                            },
                            title: Text(
                              "help",
                              style: Theme.of(context).primaryTextTheme.bodyMedium?.copyWith(color: const Color(0xff18447B)),
                            ).tr(),
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
