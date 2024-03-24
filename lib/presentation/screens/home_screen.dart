import 'package:alaman/application/provider/hive.setting.provider.dart';
import 'package:alaman/application/provider/user.repository.provider.dart';
import 'package:alaman/domain/usersetting/model/user.setting.model.dart';
import 'package:alaman/presentation/widgets/donor_donation_slider.dart';
import 'package:alaman/presentation/widgets/grant_slider.dart';
import 'package:alaman/presentation/widgets/grantstatus_container.dart';
import 'package:alaman/presentation/widgets/impact_slider.dart';
import 'package:alaman/presentation/widgets/nearest_location_container.dart';
import 'package:alaman/presentation/widgets/news_carousel.dart';
import 'package:alaman/presentation/widgets/partners_slider.dart';
import 'package:alaman/presentation/widgets/responsive_widget.dart';
import 'package:alaman/presentation/widgets/shop_list.dart';
import 'package:alaman/presentation/widgets/slideandfadeanimation.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';

@RoutePage()
class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final generic = ref.watch(getGenericProvider);
    final profile = ref.watch(getProfileProvider);
    final userSetting = ref.read(settingHiveNotifierProvider);
    print(userSetting!.token);
    final controller1 =
        useAnimationController(duration: const Duration(seconds: 2));
    final controller2 =
        useAnimationController(duration: const Duration(seconds: 2));
    final controller3 =
        useAnimationController(duration: const Duration(seconds: 2));
    final controller4 =
        useAnimationController(duration: const Duration(seconds: 2));
    final controller5 =
        useAnimationController(duration: const Duration(seconds: 2));
    final controller6 =
        useAnimationController(duration: const Duration(seconds: 2));
    final controller7 =
        useAnimationController(duration: const Duration(seconds: 2));
    final controller8 =
        useAnimationController(duration: const Duration(seconds: 2));
    useEffect(() {
      controller1.forward();
      controller2.forward();
      controller3.forward();
      controller4.forward();
      controller5.forward();
      controller6.forward();
      controller7.forward();
      controller8.forward();
      return null;
    }, const []);
    return SafeArea(
      child: Scaffold(
        body: ResponsiveWidget(
          child: generic.when(
              data: (data) => data.fold(
                  (l) => null,
                  (r) => Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20.0),
                                child: ResponsiveRowColumn(
                                  layout: ResponsiveRowColumnType.ROW,
                                  rowCrossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  rowMainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ResponsiveRowColumnItem(
                                        child: SlideAndFadeAnimation(
                                      controller: controller1,
                                      offset: const Offset(-4, 0),
                                      child: ResponsiveRowColumn(
                                        layout: ResponsiveRowColumnType.COLUMN,
                                        columnCrossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          ResponsiveRowColumnItem(
                                              child: Text(
                                            profile.maybeWhen(
                                              orElse: () => "Loading ...",
                                              data: (data) => data.fold(
                                                  (l) => "${l.message}", (r) {
                                                return "Hello ${userSetting?.role == "Beneficiary" ? r.name : r.User.name},";
                                              }),
                                            ),
                                            style: Theme.of(context)
                                                .primaryTextTheme
                                                .bodyMedium
                                                ?.copyWith(
                                                    backgroundColor:
                                                        const Color(0xffB12732)
                                                            .withOpacity(0.1),
                                                    color: const Color(
                                                        0xff2A7DE1)),
                                          )),
                                          ResponsiveRowColumnItem(
                                              child: Text(
                                            "Welcome To Al Aman Fund",
                                            style: Theme.of(context)
                                                .primaryTextTheme
                                                .bodyMedium
                                                ?.copyWith(
                                                    fontSize: 24,
                                                    fontWeight: FontWeight.bold,
                                                    color: const Color(
                                                        0xff16437B)),
                                          )),
                                        ],
                                      ),
                                    )),
                                    ResponsiveRowColumnItem(
                                        child: SlideAndFadeAnimation(
                                      controller: controller1,
                                      offset: const Offset(4, 0),
                                      child: Container(
                                        height: 50,
                                        width: 50,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            color: const Color(0xffFFC629)),
                                        child: const Icon(
                                          FontAwesomeIcons.bell,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ))
                                  ],
                                ),
                              ),
                              const Gap(20),
                              SlideAndFadeAnimation(
                                  controller: controller2,
                                  offset: const Offset(0, -3),
                                  child: const NewsCarousel()),
                              const Gap(20),
                              SlideAndFadeAnimation(
                                controller: controller3,
                                offset: const Offset(-1, 0),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20.0),
                                  child: Text(
                                    "Top partners",
                                    style: Theme.of(context)
                                        .primaryTextTheme
                                        .bodyMedium
                                        ?.copyWith(
                                            color: const Color(0xff16437B)),
                                  ),
                                ),
                              ),
                              const Gap(20),
                              SlideAndFadeAnimation(
                                controller: controller4,
                                offset: const Offset(3, 0),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0),
                                  child: PartnerSlider(
                                    partners: r.Partners!,
                                  ),
                                ),
                              ),
                              const Gap(20),
                              SlideAndFadeAnimation(
                                controller: controller3,
                                offset: const Offset(-1, 0),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20.0),
                                  child: Text(
                                    userSetting?.role == "Beneficiary"
                                        ? "Type of Grants"
                                        : "Type of Donations",
                                    style: Theme.of(context)
                                        .primaryTextTheme
                                        .bodyMedium
                                        ?.copyWith(
                                            color: const Color(0xff16437B)),
                                  ),
                                ),
                              ),
                              const Gap(20),
                              SlideAndFadeAnimation(
                                  controller: controller6,
                                  offset: const Offset(0, -4),
                                  child: userSetting?.role == "Beneficiary"
                                      ? const GranstSlider()
                                      : const DonorDonationSlider()),
                              const Gap(20),
                              SlideAndFadeAnimation(
                                controller: controller3,
                                offset: const Offset(-1, 0),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20.0),
                                  child: Text(
                                    userSetting?.role == "Beneficiary"
                                        ? "Grant status"
                                        : "Impact Status",
                                    style: Theme.of(context)
                                        .primaryTextTheme
                                        .bodyMedium
                                        ?.copyWith(
                                            color: const Color(0xff16437B)),
                                  ),
                                ),
                              ),
                              const Gap(20),
                              SlideAndFadeAnimation(
                                  controller: controller7,
                                  offset: const Offset(0, -4),
                                  child: (userSetting?.role == "Beneficiary")
                                      ? const GrantStatusContainer()
                                      : const ImpactSlider()),
                              const Gap(20),
                              if (userSetting?.role != "Beneficiary")
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20.0),
                                  child: Text(
                                    "Shop",
                                    style: Theme.of(context)
                                        .primaryTextTheme
                                        .bodyMedium
                                        ?.copyWith(
                                            color: const Color(0xff16437B)),
                                  ),
                                ),
                              if (userSetting?.role != "Beneficiary")
                                const Gap(20),
                              if (userSetting?.role != "Beneficiary")
                                const ShopGridView(),
                              if (userSetting?.role != "Beneficiary")
                                const Gap(20),
                              if (userSetting?.role != "Beneficiary")
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20.0),
                                  child: Text(
                                    "Nearest Location",
                                    style: Theme.of(context)
                                        .primaryTextTheme
                                        .bodyMedium
                                        ?.copyWith(
                                            color: const Color(0xff16437B)),
                                  ),
                                ),
                              if (userSetting?.role != "Beneficiary")
                                const Gap(20),
                              if (userSetting?.role != "Beneficiary")
                                const NearestLocation(),
                              if (userSetting?.role != "Beneficiary")
                                const Gap(20),
                            ],
                          ),
                        ),
                      )),
              error: (error, stackTrace) => Text(error.toString()),
              loading: () => const CircularProgressIndicator()),
        ),
      ),
    );
  }
}
