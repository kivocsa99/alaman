import 'package:alaman/application/provider/language.provider.dart';
import 'package:alaman/application/provider/user.repository.provider.dart';
import 'package:alaman/constants.dart';
import 'package:alaman/domain/scholarshiptypes/model/scholarshiptypes.model.dart';
import 'package:alaman/domain/user/model/beneficiary/beneficiary.model.dart';
import 'package:alaman/presentation/widgets/beneficairy_bottom_sheet.dart';
import 'package:alaman/presentation/widgets/custom_appbar.dart';
import 'package:alaman/presentation/widgets/impact_container.dart';
import 'package:alaman/presentation/widgets/profile.container.dart';
import 'package:alaman/presentation/widgets/responsive_widget.dart';
import 'package:alaman/presentation/widgets/snake.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';

@RoutePage()
class BeneficiaryProfileScreen extends HookConsumerWidget {
  final List<StepsModel> steps;
  final String? profileId;
  final int? index;
  final String? name;
  final double? step;
  const BeneficiaryProfileScreen({
    super.key,
    required this.index,
    required this.profileId,
    required this.steps,
    required this.name,
    required this.step,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final beneficiary = ref.watch(getProfileByIDProvider(profileId: profileId));
    final locale = ref.watch(languageHiveNotifierProvider);
    final selectedIndex = useState(index);
    return ResponsiveWidget(
      child: SafeArea(
        child: Scaffold(
          appBar: const CustomAppBar(
            title: "profile",
            description: "beneficiaryprogress",
          ),
          body: beneficiary.when(
              data: (data) => data.fold((l) => Text(l.message ?? "internetconnection").tr(), (r) {
                    final BeneficiaryModel model = r;

                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: ListView(
                        children: [
                          const Gap(50),
                          Container(
                            padding: const EdgeInsets.all(15),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white,
                            ),
                            child: ResponsiveRowColumn(
                              layout: ResponsiveRowColumnType.COLUMN,
                              children: [
                                ResponsiveRowColumnItem(
                                    child: ResponsiveRowColumn(
                                  layout: ResponsiveRowColumnType.ROW,
                                  rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    ResponsiveRowColumnItem(
                                        child: ResponsiveRowColumn(
                                      layout: ResponsiveRowColumnType.ROW,
                                      children: [
                                        ResponsiveRowColumnItem(
                                          child: Container(
                                            width: 40,
                                            height: 40,
                                            alignment: Alignment.center,
                                            decoration: const BoxDecoration(
                                              color: Color(0xffffc629),
                                              shape: BoxShape.circle,
                                            ),
                                            child: model.image != null
                                                ? CachedNetworkImage(
                                                    imageUrl: "$storageUrl/${model.image}",
                                                    placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
                                                    errorWidget: (context, url, error) => const Icon(Icons.error),
                                                    imageBuilder: (context, imageProvider) {
                                                      return ClipRRect(
                                                        borderRadius: BorderRadius.circular(15),
                                                        child: Image(
                                                          image: imageProvider,
                                                          fit: BoxFit.fill,
                                                          width: double.infinity,
                                                          height: double.infinity,
                                                        ),
                                                      );
                                                    },
                                                  )
                                                : const Icon(
                                                    Icons.person,
                                                    color: Colors.white,
                                                  ),
                                          ),
                                        ),
                                        const ResponsiveRowColumnItem(child: Gap(10)),
                                        ResponsiveRowColumnItem(
                                            child: ResponsiveRowColumn(
                                          layout: ResponsiveRowColumnType.COLUMN,
                                          columnCrossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            ResponsiveRowColumnItem(
                                                child: Text(
                                              locale == "en" ? model.name! : model.name_ar!,
                                              style: Theme.of(context).primaryTextTheme.bodyMedium!.copyWith(color: const Color(0xff16437B)),
                                            )),
                                            ResponsiveRowColumnItem(
                                                child: Text(
                                              locale == "en" ? model.scholarship_type!.name! : model.scholarship_type!.name_ar!,
                                              style: Theme.of(context).primaryTextTheme.bodyMedium!.copyWith(fontSize: 12),
                                            )),
                                          ],
                                        )),
                                      ],
                                    )),
                                  ],
                                )),
                                const ResponsiveRowColumnItem(child: Gap(30)),
                                ResponsiveRowColumnItem(
                                    child: ProgressBar(
                                        target: model.donations_goal!.toDouble(), currentProgress: model.beneficiary_payments!.fold(0.0, (sum, current) => sum + current.amount!.toDouble()))),
                                const ResponsiveRowColumnItem(child: Gap(30)),
                                ResponsiveRowColumnItem(
                                    child: ResponsiveRowColumn(
                                  layout: ResponsiveRowColumnType.ROW,
                                  rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    ResponsiveRowColumnItem(
                                        child: Text(
                                      "${"started".tr()}: ${convertApiDate(model.alaman_join_date!)} ",
                                      style: Theme.of(context).primaryTextTheme.bodyMedium!.copyWith(fontSize: 12),
                                    )),
                                    ResponsiveRowColumnItem(
                                        child: Text(
                                      "${"target".tr()}: ${formatNumber(model.donations_goal!)}  ${"jod".tr()}",
                                      style: Theme.of(context).primaryTextTheme.bodyMedium!.copyWith(fontSize: 12),
                                    ))
                                  ],
                                )),
                              ],
                            ),
                          ),
                          ResponsiveRowColumnItem(
                              child: ResponsiveRowColumn(
                            layout: ResponsiveRowColumnType.ROW,
                            rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ResponsiveRowColumnItem(
                                  rowFlex: 1,
                                  child: GestureDetector(
                                    onTap: () => selectedIndex.value = 1,
                                    child: Container(
                                      height: 35,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        border: Border.all(width: .5),
                                        color: selectedIndex.value == 1 ? const Color(0xffFFC629) : Colors.white,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Text(
                                        "impactpathway",
                                        style: Theme.of(context).primaryTextTheme.bodyMedium?.copyWith(
                                              color: selectedIndex.value == 1 ? Colors.white : Colors.black,
                                              fontSize: 13,
                                            ),
                                      ).tr(),
                                    ),
                                  )),
                              const ResponsiveRowColumnItem(child: Gap(5)),
                              ResponsiveRowColumnItem(
                                  rowFlex: 1,
                                  child: GestureDetector(
                                    onTap: () => selectedIndex.value = 0,
                                    child: Container(
                                      height: 35,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                        border: Border.all(width: .5),
                                        color: selectedIndex.value == 0 ? const Color(0xffFFC629) : Colors.white,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Text(
                                        "profile",
                                        style: Theme.of(context).primaryTextTheme.bodyMedium?.copyWith(fontSize: 13, color: selectedIndex.value == 0 ? Colors.white : Colors.black),
                                      ).tr(),
                                    ),
                                  )),
                              const ResponsiveRowColumnItem(child: Gap(10)),
                              ResponsiveRowColumnItem(
                                  child: GestureDetector(
                                onTap: () async => await ref.read(getGenericProvider.future).then((value) => value.fold(
                                    (l) => null,
                                    (r) => showModalBottomSheet(
                                          context: context,
                                          backgroundColor: Colors.white,
                                          showDragHandle: true,
                                          isScrollControlled: true,
                                          barrierColor: Colors.grey.withOpacity(0.7),
                                          builder: (BuildContext context) {
                                            return BeneficiaryBottomSheet(
                                              marks: model.marks!,
                                              methods: r.MeetingMethods!,
                                              beneficiaryId: "${model.id}",
                                            );
                                          },
                                        ))),
                                child: Container(
                                  width: 30,
                                  height: 30,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                                  child: Icon(
                                    Icons.more_horiz,
                                    color: Colors.white,
                                  ),
                                ),
                              ))
                            ],
                          )),
                          const Gap(50),
                          AnimatedSwitcher(
                              duration: const Duration(milliseconds: 500),
                              child: selectedIndex.value == 0
                                  ? Column(
                                      children: [
                                        Align(
                                          alignment: locale == "en" ? Alignment.centerLeft : Alignment.centerRight,
                                          child: Text(
                                            "contactinfo",
                                            style: Theme.of(context).primaryTextTheme.titleSmall!.copyWith(color: const Color(0xff16437B)),
                                          ).tr(),
                                        ),
                                        const Gap(20),
                                        ProfileContainer(title: "fullname", description: "${locale == "en" ? model.name : model.name_ar}"),
                                        const Gap(10),
                                        ProfileContainer(title: "sepcialization", description: "${locale == "en"?model.major!.name:model.major!.name_ar!}"),
                                        const Gap(10),
                                        ProfileContainer(title: "joindate", description: convertApiDate(model.alaman_join_date ?? "")),
                                        Gap(10),
                                        ProfileContainer(title: "estimatedgraduation", description: convertApiDate(model.alaman_join_date ?? "")),
                                        Gap(10),
                                        ProfileContainer(title: "educationalorgname", description: locale=="en"? model.educational_organization!.name!:model.educational_organization!.name_ar!),
                                      ],
                                    )
                                  : CustomPaint(
                                      size: Size(
                                          500, (500 * 1.1665543377953818).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                                      painter: RPSCustomPainter(step: step, alamanphaseName: name),
                                    ))
                        ],
                      ),
                    );
                  }),
              error: (error, stackTrace) {
                return Text(error.toString());
              },
              loading: () => const CircularProgressIndicator()),
        ),
      ),
    );
  }
}
