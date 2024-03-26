import 'dart:math';

import 'package:alaman/application/provider/auth.repository.provider.dart';
import 'package:alaman/application/provider/hive.setting.provider.dart';
import 'package:alaman/application/provider/user.repository.provider.dart';
import 'package:alaman/constants.dart';
import 'package:alaman/domain/user/model/beneficiary/beneficiary.model.dart';
import 'package:alaman/presentation/screens/filtered_screen.dart';
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
          title: "Profile",
          description: "Profile Details",
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
                          const Gap(50),
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
                                child: setting?.role == "Beneficiary" &&
                                        model!.image != null
                                    ? CachedNetworkImage(
                                        imageUrl: "$storageUrl/${model.image}",
                                        placeholder: (context, url) =>
                                            const Center(
                                                child:
                                                    CircularProgressIndicator()),
                                        errorWidget: (context, url, error) =>
                                            const Icon(Icons.error),
                                        imageBuilder:
                                            (context, imageProvider) =>
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
                                      )
                                    : setting?.role == "Donor" &&
                                            model.User.image != null
                                        ? CachedNetworkImage(
                                            imageUrl:
                                                "$storageUrl/${model.User.image}",
                                            placeholder: (context, url) =>
                                                const Center(
                                                    child:
                                                        CircularProgressIndicator()),
                                            errorWidget:
                                                (context, url, error) =>
                                                    const Icon(Icons.error),
                                            imageBuilder:
                                                (context, imageProvider) =>
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
                                          )
                                        : const Icon(
                                            Icons.person,
                                            color: Colors.white,
                                          ),
                              ),
                              const Gap(20),
                              if (setting?.role == "Beneficiary")
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    GestureDetector(
                                        onTap: () => context.router
                                            .push(const SetAvatarRoute()),
                                        child: Text(
                                          "Change your Character",
                                          style: Theme.of(context)
                                              .primaryTextTheme
                                              .bodyMedium
                                              ?.copyWith(
                                                  color:
                                                      const Color(0xff2A7DE1)),
                                        )),
                                    GestureDetector(
                                      onTap: () => null,
                                      child: Text(
                                        "Edit Bio",
                                        style: Theme.of(context)
                                            .primaryTextTheme
                                            .bodyMedium,
                                      ),
                                    )
                                  ],
                                ),
                            ],
                          ),
                          const Gap(20),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Contact Info",
                              style: Theme.of(context)
                                  .primaryTextTheme
                                  .titleSmall!
                                  .copyWith(color: const Color(0xff16437B)),
                            ),
                          ),
                          ProfileContainer(
                              title: "Name",
                              description:
                                  "${setting?.role != "Beneficiary" ? model.User.name : model.name}"),
                          const Gap(10),
                          ProfileContainer(
                              title: "Email",
                              description:
                                  "${setting?.role != "Beneficiary" ? model.User.email : model.email}"),
                          const Gap(10),
                          ProfileContainer(
                              title: "Mobile Number",
                              description:
                                  "${setting?.role != "Beneficiary" ? model.User.phone : model.phone}"),
                          const Gap(10),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Your phone number is kept completely confidential",
                              style: Theme.of(context)
                                  .primaryTextTheme
                                  .titleSmall
                                  ?.copyWith(color: const Color(0xff16437B)),
                            ),
                          ),
                          const Gap(10),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Change Phone Number",
                              style: Theme.of(context)
                                  .primaryTextTheme
                                  .titleSmall
                                  ?.copyWith(color: const Color(0xff2A7DE1)),
                            ),
                          ),
                          const Gap(10),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Details",
                              style: Theme.of(context)
                                  .primaryTextTheme
                                  .titleSmall!
                                  .copyWith(color: const Color(0xff16437B)),
                            ),
                          ),
                          ProfileContainer(
                              title: "Gender",
                              description:
                                  "${setting?.role != "Beneficiary" ? model.User.gender!.name : model.gender!.name}"),
                          const Gap(10),
                          ProfileContainer(
                              title: "Date Joind",
                              description: convertApiDate(
                                  setting?.role != "Beneficiary"
                                      ? model.User.created_at ?? ""
                                      : model.alaman_join_date ?? "")),
                          const Gap(10),
                          ProfileContainer(
                              title: "National Id",
                              description:
                                  "${setting?.role != "Beneficiary" ? model.User.national_id_number ?? "" : model.national_id_number ?? ""}"),
                          const Gap(10),
                          ProfileContainer(
                              title: "Address",
                              description:
                                  "${setting?.role != "Beneficiary" ? model.User.address ?? "" : model.address ?? ""}"),
                          const Gap(10),
                          if (setting?.role == "Beneficiary")
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Education",
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .titleSmall!
                                    .copyWith(color: const Color(0xff16437B)),
                              ),
                            ),
                          if (setting?.role == "Beneficiary")
                            const ProfileContainer(
                                title: "Estimated Graduation Date",
                                description: "no data"),
                          if (setting?.role == "Beneficiary") Gap(10),
                          if (setting?.role == "Beneficiary")
                            ProfileContainer(
                                title: "Educational Organization Name",
                                description:
                                    "${model.educational_organization_name}"),
                          if (setting?.role == "Beneficiary") Gap(10),
                          if (setting?.role == "Beneficiary")
                            ProfileContainer(
                                title: "Specialization",
                                description: "${model.specialization}"),
                          if (setting?.role == "Beneficiary") Gap(20),
                          if (setting?.role == "Beneficiary")
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "EWallet",
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .titleSmall!
                                    .copyWith(color: Color(0xff16437B)),
                              ),
                            ),
                          if (setting?.role == "Beneficiary")
                            ProfileContainer(
                                title: "E Wallet Number",
                                description: "${model.e_wallet_number}"),
                          if (setting?.role == "Beneficiary") Gap(10),
                          if (setting?.role == "Beneficiary")
                            ProfileContainer(
                                title: "E Wallet Status",
                                description: "${model.e_wallet_status}"),
                          if (setting?.role == "Beneficiary") Gap(20),
                          if (setting?.role == "Beneficiary")
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Details",
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .titleSmall!
                                    .copyWith(color: Color(0xff16437B)),
                              ),
                            ),
                          if (setting?.role == "Beneficiary")
                            ProfileContainer(
                                title: "Type of Scholarship",
                                description:
                                    "${model.scholarship_type?.name ?? ""}"),
                          Gap(10),
                          if (setting?.role == "Beneficiary")
                            ProfileContainer(
                                title: "Status of the Scholarship",
                                description:
                                    "${model.scholarship_status?.name ?? ""}"),
                          if (setting?.role == "Beneficiary") Gap(10),
                          if (setting?.role == "Beneficiary")
                            ProfileContainer(
                                title: "Rent Expiration Date",
                                description: convertApiDate(
                                    model.rent_expiration_date ?? "")),
                          if (setting?.role == "Beneficiary") Gap(10),
                          if (setting?.role == "Beneficiary")
                            ProfileContainer(
                                title: "Insurance Covering",
                                description: "${model.insurance_covering}"),
                          if (setting?.role == "Beneficiary") Gap(10),
                          if (setting?.role == "Beneficiary")
                            ProfileContainer(
                                title: "Insurance Covering Date ",
                                description: convertApiDate(
                                    model.insurance_covering_to_date ?? "")),
                          Gap(50),
                          GestureDetector(
                            onTap: () async => await ref
                                .read(logOutProvider.future)
                                .then((value) async => await context.router
                                    .replaceAll([const OnBoardingRoute()])),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Sign Out",
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .bodyMedium
                                    ?.copyWith(color: Color(0xff2A7DE1)),
                              ),
                            ),
                          ),
                          Gap(50),
                        ],
                      ),
                    ),
                  );
                }),
            error: (error, stackTrace) => Text(error.toString()),
            loading: () => const CircularProgressIndicator()),
      ),
    );
  }
}
