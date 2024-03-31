import 'package:alaman/application/provider/campaign.provider.dart';
import 'package:alaman/application/provider/hive.setting.provider.dart';
import 'package:alaman/application/provider/language.provider.dart';
import 'package:alaman/application/provider/user.repository.provider.dart';
import 'package:alaman/constants.dart';
import 'package:alaman/presentation/screens/filtered_screen.dart';
import 'package:alaman/presentation/widgets/donor_donation_slider.dart';
import 'package:alaman/presentation/widgets/grant_slider.dart';
import 'package:alaman/presentation/widgets/grantstatus_container.dart';
import 'package:alaman/presentation/widgets/impact_slider.dart';
import 'package:alaman/presentation/widgets/nearest_location_container.dart';
import 'package:alaman/presentation/widgets/news_carousel.dart';
import 'package:alaman/presentation/widgets/news_modal_sheet.dart';
import 'package:alaman/presentation/widgets/partners_slider.dart';
import 'package:alaman/presentation/widgets/responsive_widget.dart';
import 'package:alaman/presentation/widgets/slideandfadeanimation.dart';
import 'package:alaman/presentation/widgets/sponsership_slider.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';

@RoutePage()
class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale =
        ref.watch(languageHiveNotifierProvider.notifier).getLanguage();
    final generic = ref.watch(getGenericProvider);
    final profile = ref.watch(getProfileProvider);
    final userSetting = ref.watch(settingHiveNotifierProvider);
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
    final state = ref.watch(paginatedCampaignNotifierProvider);
    final notifier = ref.watch(paginatedCampaignNotifierProvider.notifier);
    final scrollController = useScrollController();
    useEffect(() {
      void onScroll() {
        if (scrollController.position.atEdge) {
          bool isBottom = scrollController.position.pixels ==
              scrollController.position.maxScrollExtent;
          if (isBottom && !state.hasReachedMax) {
            notifier.fetchsearch();
          }
        }
      }

      notifier.fetchsearch();

      scrollController.addListener(onScroll);

      return () => scrollController.removeListener(onScroll);
    }, [scrollController]);

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
                                        rowFit: FlexFit.loose,
                                        child: SlideAndFadeAnimation(
                                          controller: controller1,
                                          offset: const Offset(-4, 0),
                                          child: ResponsiveRowColumn(
                                            layout:
                                                ResponsiveRowColumnType.COLUMN,
                                            columnCrossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              ResponsiveRowColumnItem(
                                                  child: Text(
                                                profile.maybeWhen(
                                                  orElse: () => "Loading ...",
                                                  data: (data) => data.fold(
                                                      (l) => "${l.message}",
                                                      (r) {
                                                    return "${"hello".tr()} ${userSetting?.role == "Beneficiary" ? (locale == "en") ? r.name : r.name_ar : r.User.name},";
                                                  }),
                                                ),
                                                overflow: TextOverflow.ellipsis,
                                                style: Theme.of(context)
                                                    .primaryTextTheme
                                                    .bodyMedium
                                                    ?.copyWith(
                                                        backgroundColor:
                                                            const Color(
                                                                    0xffB12732)
                                                                .withOpacity(
                                                                    0.1),
                                                        color: const Color(
                                                            0xff2A7DE1)),
                                              )),
                                              ResponsiveRowColumnItem(
                                                  child: Text(
                                                "welcome",
                                                style: Theme.of(context)
                                                    .primaryTextTheme
                                                    .bodyMedium
                                                    ?.copyWith(
                                                        fontSize: 24,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: const Color(
                                                            0xff16437B)),
                                              ).tr()),
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
                                    "topdonors",
                                    style: Theme.of(context)
                                        .primaryTextTheme
                                        .bodyMedium
                                        ?.copyWith(
                                            color: const Color(0xff16437B)),
                                  ).tr(),
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
                                        ? "grantsType"
                                        : "donationType",
                                    style: Theme.of(context)
                                        .primaryTextTheme
                                        .bodyMedium
                                        ?.copyWith(
                                            color: const Color(0xff16437B)),
                                  ).tr(),
                                ),
                              ),
                              const Gap(20),
                              SlideAndFadeAnimation(
                                  controller: controller6,
                                  offset: const Offset(0, -4),
                                  child: userSetting?.role == "Beneficiary"
                                      ? GranstSlider()
                                      : userSetting?.role == "Donor"
                                          ? DonorDonationSlider()
                                          : const SponsershipSlider()),
                              const Gap(20),
                              if (userSetting?.role != "Corporate")
                                SlideAndFadeAnimation(
                                  controller: controller3,
                                  offset: const Offset(-1, 0),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20.0),
                                    child: Text(
                                      userSetting?.role == "Beneficiary"
                                          ? "grantstatus"
                                          : "impactustatus",
                                      style: Theme.of(context)
                                          .primaryTextTheme
                                          .bodyMedium
                                          ?.copyWith(
                                              color: const Color(0xff16437B)),
                                    ).tr(),
                                  ),
                                ),
                              if (userSetting?.role != "Corporate")
                                const Gap(20),
                              if (userSetting?.role != "Corporate")
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
                                    "nearest",
                                    style: Theme.of(context)
                                        .primaryTextTheme
                                        .bodyMedium
                                        ?.copyWith(
                                            color: const Color(0xff16437B)),
                                  ).tr(),
                                ),
                              if (userSetting?.role != "Beneficiary")
                                const Gap(20),
                              if (userSetting?.role != "Beneficiary")
                                const NearestLocation(),
                              if (userSetting?.role != "Beneficiary")
                                const Gap(20),
                              if (userSetting?.role != "Beneficiary")
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20.0),
                                  child: Text(
                                    "campaign",
                                    style: Theme.of(context)
                                        .primaryTextTheme
                                        .bodyMedium
                                        ?.copyWith(
                                            color: const Color(0xff16437B)),
                                  ).tr(),
                                ),
                              if (userSetting?.role != "Beneficiary")
                                const Gap(20),
                              if (userSetting?.role != "Beneficiary")
                                SizedBox(
                                  child: CarouselSlider(
                                      items: state.beneficiary
                                          .map((e) => GestureDetector(
                                                onTap: () =>
                                                    showModalBottomSheet(
                                                  context: context,
                                                  backgroundColor: Colors.white,
                                                  showDragHandle: true,
                                                  isScrollControlled: true,
                                                  barrierColor: Colors.grey
                                                      .withOpacity(0.7),
                                                  builder:
                                                      (BuildContext context) {
                                                    return NewsBottomSheet(
                                                      title: e.name!,
                                                      titleAr: e.name_ar!,
                                                      des: e.text!,
                                                      desAr: e.text_ar!,
                                                      createdAt: e.created_at!,
                                                      image: e.image!,
                                                      href: e.href,
                                                    );
                                                  },
                                                ),
                                                child: Container(
                                                  height: 200,
                                                  margin: const EdgeInsets
                                                      .symmetric(
                                                      horizontal: 10),
                                                  width: double.infinity,
                                                  child: Stack(
                                                    children: [
                                                      ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(15),
                                                        child:
                                                            CachedNetworkImage(
                                                          imageUrl:
                                                              "$storageUrl${e.image!}",
                                                          placeholder: (context,
                                                                  url) =>
                                                              const Center(
                                                                  child:
                                                                      CircularProgressIndicator()),
                                                          errorWidget: (context,
                                                                  url, error) =>
                                                              const Icon(
                                                                  Icons.error),
                                                          imageBuilder: (context,
                                                              imageProvider) {
                                                            return Image(
                                                              image:
                                                                  imageProvider,
                                                              fit: BoxFit.fill,
                                                              width: double
                                                                  .infinity,
                                                              height: double
                                                                  .infinity,
                                                            );
                                                          },
                                                        ),
                                                      ),
                                                      Positioned.fill(
                                                        child: DecoratedBox(
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        15),
                                                            gradient:
                                                                LinearGradient(
                                                              colors: [
                                                                const Color(
                                                                        0xff4379BD)
                                                                    .brighten(
                                                                        15),
                                                                Colors
                                                                    .transparent
                                                              ],
                                                              begin: locale ==
                                                                      "en"
                                                                  ? Alignment
                                                                      .centerLeft
                                                                  : Alignment
                                                                      .centerRight,
                                                              end: locale ==
                                                                      "en"
                                                                  ? Alignment
                                                                      .centerRight
                                                                  : Alignment
                                                                      .centerLeft,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Positioned(
                                                        top: 10,
                                                        left: 20,
                                                        bottom: 0,
                                                        right: 20,
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceAround,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              "campaign",
                                                              style: Theme.of(
                                                                      context)
                                                                  .primaryTextTheme
                                                                  .titleSmall
                                                                  ?.copyWith(
                                                                      color: Colors
                                                                          .white),
                                                            ).tr(),
                                                            const SizedBox(
                                                                height: 10),
                                                            Container(
                                                              width: 250,
                                                              child: Text(
                                                                locale == "en"
                                                                    ? e.name!
                                                                    : e.name_ar!,
                                                                maxLines: 3,
                                                                style: Theme.of(
                                                                        context)
                                                                    .primaryTextTheme
                                                                    .bodyMedium
                                                                    ?.copyWith(
                                                                      color: Colors
                                                                          .white,
                                                                    ),
                                                              ),
                                                            ),
                                                            Align(
                                                              alignment: locale ==
                                                                      "en"
                                                                  ? Alignment
                                                                      .bottomLeft
                                                                  : Alignment
                                                                      .bottomRight,
                                                              child: Text(
                                                                convertApiDate(e
                                                                    .created_at!),
                                                                style: Theme.of(
                                                                        context)
                                                                    .primaryTextTheme
                                                                    .titleSmall
                                                                    ?.copyWith(
                                                                        color: Colors
                                                                            .white),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ))
                                          .toList(),
                                      options: CarouselOptions(height: 200)),
                                ),
                              const Gap(50)
                            ],
                          ),
                        ),
                      )),
              error: (error, stackTrace) {
                print(stackTrace);
                return Text(stackTrace.toString());
              },
              loading: () => const CircularProgressIndicator()),
        ),
      ),
    );
  }
}
