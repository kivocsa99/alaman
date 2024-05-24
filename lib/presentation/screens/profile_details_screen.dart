import 'dart:math';

import 'package:alaman/application/provider/auth.repository.provider.dart';
import 'package:alaman/application/provider/hive.setting.provider.dart';
import 'package:alaman/application/provider/language.provider.dart';
import 'package:alaman/application/provider/user.repository.provider.dart';
import 'package:alaman/constants.dart';
import 'package:alaman/domain/user/model/beneficiary/beneficiary.model.dart';
import 'package:alaman/presentation/screens/filtered_screen.dart';
import 'package:alaman/presentation/widgets/change_field_bottom_sheet.dart';
import 'package:alaman/presentation/widgets/custom_appbar.dart';
import 'package:alaman/presentation/widgets/news_modal_sheet.dart';
import 'package:alaman/presentation/widgets/profile.container.dart';
import 'package:alaman/presentation/widgets/responsive_widget.dart';
import 'package:alaman/routes/app_route.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class ProfileDetailsScreen extends HookConsumerWidget {
  const ProfileDetailsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
        final locale = ref.watch(languageHiveNotifierProvider);

    Random random = Random();
    int randomNumber = random.nextInt(3);
    final colorsList = useState<List<Color>>([
      const Color(0xff4379BD),
      const Color(0xffFEE596),
      const Color(0xff93C1E8),
    ]);
    final setting = ref.read(settingHiveNotifierProvider);

    final profile = ref.watch(getProfileProvider);
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(
          title: "profile",
          description: "profiledetails",
      ),
        body: profile.when(
            data: (data) => data.fold(
                    (l) => Text(l.message ?? "internetconnection").tr(), (r) {
                  var model = r;
                  return ResponsiveWidget(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: ListView(
                        children: [
                          if (setting?.role == "Beneficiary") const Gap(50),
                          if (setting?.role == "Beneficiary")
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    width: 70,
                                    height: 70,
                                    padding: const EdgeInsets.only(top: 10),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        gradient: LinearGradient(
                                          begin: Alignment.bottomCenter,
                                          end: Alignment.topCenter,
                                          stops: [0, 5],
                                          colors: [
                                            // Brighten function is not native, you'd have to implement it
                                            Colors.white,
                                            colorsList.value[randomNumber]
                                                .brighten(5)
                                                .withOpacity(0.3),
                                          ],
                                        )),
                                    child: CachedNetworkImage(
                                      imageUrl: "$storageUrl/${model.image}",
                                      placeholder: (context, url) =>
                                          const Center(
                                              child:
                                                  CircularProgressIndicator()),
                                      errorWidget: (context, url, error) =>
                                          const Icon(Icons.error),
                                      imageBuilder: (context, imageProvider) =>
                                          Container(
                                        width: 70,
                                        height: 70,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                            image: imageProvider,
                                            scale: 2.5,
                                            fit: BoxFit
                                                .contain, // Adjust to your needs
                                          ),
                                        ),
                                      ),
                                    )),
                                const Gap(20),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    GestureDetector(
                                        onTap: () => context.router
                                            .push(const SetAvatarRoute()),
                                        child: Text(
                                          "changecharacter",
                                          style: Theme.of(context)
                                              .primaryTextTheme
                                              .bodyMedium
                                              ?.copyWith(
                                                  color:
                                                      const Color(0xff2A7DE1)),
                                        ).tr()),
                                    GestureDetector(
                                      onTap: () => showModalBottomSheet(
                                          context: context,
                                          backgroundColor: Colors.white,
                                          enableDrag: true,
                                          isScrollControlled: true,
                                          barrierColor:
                                              Colors.grey.withOpacity(0.7),
                                          builder: (BuildContext ctx) {
                                            return const ChangeFieldBottomSheet(
                                              field: "bio",
                                            );
                                          }),
                                      child: Text(
                                        "editbio",
                                        style: Theme.of(context)
                                            .primaryTextTheme
                                            .bodyMedium,
                                      ).tr(),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          const Gap(20),
                          Align(
                            alignment: locale == "en"
                                ? Alignment.centerLeft
                                : Alignment.centerRight,
                            child: Text(
                              "contactinfo",
                              style: Theme.of(context)
                                  .primaryTextTheme
                                  .titleSmall!
                                  .copyWith(color: const Color(0xff16437B)),
                            ).tr(),
                          ),
                          ProfileContainer(
                              ontap: () => showModalBottomSheet(
                                  context: context,
                                  backgroundColor: Colors.white,
                                  enableDrag: true,
                                  isScrollControlled: true,
                                  barrierColor: Colors.grey.withOpacity(0.7),
                                  builder: (BuildContext ctx) {
                                    return const ChangeFieldBottomSheet(
                                      field: "fullname",
                                    );
                                  }),
                              title: "fullname",
                              description:
                                  "${setting?.role != "Beneficiary" ? model.User.name : (locale == "en") ? model.name : model.name_ar}"),
                          const Gap(10),
                          ProfileContainer(
                              ontap: () => showModalBottomSheet(
                                  context: context,
                                  backgroundColor: Colors.white,
                                  enableDrag: true,
                                  isScrollControlled: true,
                                  barrierColor: Colors.grey.withOpacity(0.7),
                                  builder: (BuildContext ctx) {
                                    return const ChangeFieldBottomSheet(
                                      field: "email",
                                    );
                                  }),
                              title: "email",
                              description:
                                  "${setting?.role != "Beneficiary" ? model.User.email : model.email}"),
                          const Gap(10),
                          ProfileContainer(
                              title: "phonenumber",
                              description:
                                  "${setting?.role != "Beneficiary" ? model.User.phone : model.phone}"),
                          const Gap(10),
                          Align(
                            alignment: locale == "en"
                                ? Alignment.centerLeft
                                : Alignment.centerRight,
                            child: Text(
                              "confidintialphone",
                              style: Theme.of(context)
                                  .primaryTextTheme
                                  .titleSmall
                                  ?.copyWith(color: const Color(0xff16437B)),
                            ).tr(),
                          ),
                          const Gap(10),
                          Align(
                            alignment: locale == "en"
                                ? Alignment.centerLeft
                                : Alignment.centerRight,
                            child: Text(
                              "details",
                              style: Theme.of(context)
                                  .primaryTextTheme
                                  .titleSmall!
                                  .copyWith(color: const Color(0xff16437B)),
                            ).tr(),
                          ),
                          ProfileContainer(
                              title: "gender",
                              description:
                                  "${setting?.role != "Beneficiary" ? (locale == "en") ? model.User.gender.name : model.User.gender.name_ar : (locale == "en") ? model.gender.name : model.gender.name_ar}"),
                          const Gap(10),
                          ProfileContainer(
                              title: "joindate",
                              description: convertApiDate(
                                  setting?.role != "Beneficiary"
                                      ? model.User.created_at ?? ""
                                      : model.alaman_join_date ?? "")),
                          const Gap(10),
                          ProfileContainer(
                              title: "nationalid",
                              description:
                                  "${setting?.role != "Beneficiary" ? model.User.national_id_number ?? "" : model.national_id_number ?? ""}"),
                          const Gap(10),
                          ProfileContainer(
                              title: "address",
                              description:
                                  "${setting?.role != "Beneficiary" ? model.User.address ?? "" : model.address ?? ""}"),
                          const Gap(10),
                          if (setting?.role == "Beneficiary")
                            Align(
                              alignment: locale == "en"
                                  ? Alignment.centerLeft
                                  : Alignment.centerRight,
                              child: Text(
                                "education",
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .titleSmall!
                                    .copyWith(color: const Color(0xff16437B)),
                              ).tr(),
                            ),
                          if (setting?.role == "Beneficiary")
                             ProfileContainer(
                                title: "estimatedgraduation",
                                description: convertApiDate(
                                 
                                      model.alaman_estimated_graduation_date ?? "")),
                          if (setting?.role == "Beneficiary") const Gap(10),
                          if (setting?.role == "Beneficiary")
                            ProfileContainer(
                                title: "educationalorgname",
                                description:
                                    "${model.educational_organization_name}"),
                          if (setting?.role == "Beneficiary") const Gap(10),
                          if (setting?.role == "Beneficiary")
                            ProfileContainer(
                                title: "specialization",
                                description: "${model.specialization}"),
                          if (setting?.role == "Beneficiary") const Gap(20),
                          if (setting?.role == "Beneficiary")
                            Align(
                              alignment: locale == "en"
                                  ? Alignment.centerLeft
                                  : Alignment.centerRight,
                              child: Text(
                                "ewallet",
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .titleSmall!
                                    .copyWith(color: const Color(0xff16437B)),
                              ).tr(),
                            ),
                          if (setting?.role == "Beneficiary")
                            ProfileContainer(
                                title: "E Wallet Number",
                                description: "${model.e_wallet_number}"),
                          if (setting?.role == "Beneficiary") const Gap(10),
                          if (setting?.role == "Beneficiary")
                            ProfileContainer(
                                title: "E Wallet Status",
                                description: "${model.e_wallet_status}"),
                          if (setting?.role == "Beneficiary") const Gap(20),
                          if (setting?.role == "Beneficiary")
                            Align(
                              alignment: locale == "en"
                                  ? Alignment.centerLeft
                                  : Alignment.centerRight,
                              child: Text(
                                "education",
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .titleSmall!
                                    .copyWith(color: const Color(0xff16437B)),
                              ).tr(),
                            ),
                          if (setting?.role == "Beneficiary")
                            ProfileContainer(
                                title: "typeofscholarship",
                                description:
                                    "${model.scholarship_type?.name ?? ""}"),
                          const Gap(10),
                          if (setting?.role == "Beneficiary")
                            ProfileContainer(
                                title: "statusofscholarship",
                                description:
                                    "${model.scholarship_status?.name ?? ""}"),
                          if (setting?.role == "Beneficiary") const Gap(10),
                          if (setting?.role == "Beneficiary")
                            ProfileContainer(
                                title: "statusofscholarship",
                                description: convertApiDate(
                                    model.rent_expiration_date ?? "")),
                          if (setting?.role == "Beneficiary") const Gap(10),
                          if (setting?.role == "Beneficiary")
                            ProfileContainer(
                                title: "insurance",
                                description: "${model.insurance_covering}"),
                          if (setting?.role == "Beneficiary") const Gap(10),
                          if (setting?.role == "Beneficiary")
                            ProfileContainer(
                                title: "insurancedate",
                                description: convertApiDate(
                                    model.insurance_covering_to_date ?? "")),
                          const Gap(50),
                          // GestureDetector(
                          //   onTap: () async => await ref
                          //       .read(logOutProvider.future)
                          //       .then((value) async => await context.router
                          //           .replaceAll([const OnBoardingRoute()])),
                          //   child: Align(
                          //     alignment: locale =="en"?Alignment.centerLeft:Alignment.centerRight,
                          //     child: Text(
                          //       "Change password",
                          //       style: Theme.of(context)
                          //           .primaryTextTheme
                          //           .bodyMedium
                          //           ?.copyWith(color: const Color(0xff2A7DE1)),
                          //     ),
                          //   ),
                          // ),
                          GestureDetector(
                            onTap: () async => await ref
                                .read(deleteMyAccountProvider.future)
                                .then((value) async => await context.router
                                    .replaceAll([const OnBoardingRoute()])),
                            child: Align(
                              alignment: locale == "en"
                                  ? Alignment.centerLeft
                                  : Alignment.centerRight,
                              child: Text(
                                "deleteaccount",
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .bodyMedium
                                    ?.copyWith(color: const Color(0xff2A7DE1)),
                              ).tr(),
                            ),
                          ),
                          Gap(10),
                          GestureDetector(
                            onTap: () async => await ref
                                .read(logOutProvider.future)
                                .then((value) async => await context.router
                                    .replaceAll([const OnBoardingRoute()])),
                            child: Align(
                              alignment: locale == "en"
                                  ? Alignment.centerLeft
                                  : Alignment.centerRight,
                              child: Text(
                                "signout",
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .bodyMedium
                                    ?.copyWith(color: const Color(0xff2A7DE1)),
                              ).tr(),
                            ),
                          ),
                          const Gap(50),
                        ],
                      ),
                    ),
                  );
                }),
            error: (error, stackTrace) => Text(stackTrace.toString()),
            loading: () => const CircularProgressIndicator()),
      ),
    );
  }
}
