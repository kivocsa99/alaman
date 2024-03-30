import 'package:alaman/application/provider/hive.setting.provider.dart';
import 'package:alaman/application/provider/language.provider.dart';
import 'package:alaman/domain/city/model/city.model.dart';
import 'package:alaman/domain/educationalyear/model/educationalyear.model.dart';
import 'package:alaman/domain/scholarshiptypes/model/scholarshiptypes.model.dart';
import 'package:alaman/presentation/widgets/auth_container.dart';
import 'package:alaman/presentation/widgets/step_indicator.dart';
import 'package:alaman/routes/app_route.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DonationBottomSheet extends HookConsumerWidget {
  final List<ScholarshipTypesModel>? scholarships;
  final List<EducationalYearModel>? educationalYears;
  final List<CityModel>? cities;
  const DonationBottomSheet({
    required this.cities,
    required this.educationalYears,
    required this.scholarships,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale =
        ref.watch(languageHiveNotifierProvider.notifier).getLanguage();
    final formKey = useState(GlobalKey<FormState>());
    var viewInsets = MediaQuery.of(context).viewInsets.bottom;
    final controller = FixedExtentScrollController();
    final isLoading = useState(false);
    final selectedIndex = useState(0);
    final currentStep = useState(0);
    final type = useState(locale == "en"
        ? scholarships![selectedIndex.value].name!
        : scholarships![selectedIndex.value].name_ar!);
    final typeId = useState(scholarships![selectedIndex.value].id!);
    final year = useState("year".tr());
    final yearId = useState(0);
    final gender = useState("gender".tr());
    final genderId = useState(0);
    final city = useState("governate".tr());
    final cityId = useState(0);
    final age = useState("age".tr());
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(50)),
      height: MediaQuery.of(context).size.height * 0.8,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Form(
        key: formKey.value,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(bottom: viewInsets),
            child: Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  top: -25,
                  child: Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(5),
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: StepIndicator(
                        currentStep: currentStep.value, stepCount: 2),
                  ),
                ),
                AnimatedSwitcher(
                  duration: const Duration(seconds: 1),
                  child: currentStep.value == 0
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                  onPressed: () => context.router.pop(),
                                  icon: const Icon(
                                    Icons.arrow_back,
                                    color: Color(0xff16437B),
                                  ),
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "ourprograms",
                                      textAlign: TextAlign.center,
                                      style: Theme.of(context)
                                          .primaryTextTheme
                                          .bodyLarge
                                          ?.copyWith(
                                              fontSize: 20,
                                              color: const Color(0xff16437B),
                                              fontWeight: FontWeight.w500),
                                    ).tr(),
                                    Text("choosegrant",
                                            textAlign: TextAlign.center,
                                            style: Theme.of(context)
                                                .primaryTextTheme
                                                .bodyMedium)
                                        .tr(),
                                  ],
                                ),
                                IconButton(
                                  onPressed: () => context.router.pop(),
                                  icon: const Icon(
                                    Icons.close,
                                    color: Color(0xff16437B),
                                  ),
                                ),
                              ],
                            ),
                            const Gap(40),
                            ListView.separated(
                              physics: const NeverScrollableScrollPhysics(),
                              separatorBuilder: (context, index) =>
                                  const Gap(10),
                              shrinkWrap: true,
                              itemBuilder: (context, index) => AuthContainer(
                                color: selectedIndex.value == index
                                    ? const Color(0xff2A7DE1)
                                    : Colors.white,
                                height: 50,
                                raduis: 40,
                                onTap: () async {
                                  selectedIndex.value = index;
                                  type.value = locale == "en"
                                      ? scholarships![index].name!
                                      : scholarships![index].name_ar!;
                                  typeId.value = scholarships![index].id!;
                                },
                                child: Text(
                                  locale == "en"
                                      ? scholarships![index].name!
                                      : scholarships![index].name_ar!,
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .titleSmall!
                                      .copyWith(
                                          color: selectedIndex.value == index
                                              ? Colors.white
                                              : const Color(0xff16437B)),
                                ),
                              ),
                              itemCount: scholarships!.length,
                            ),
                            const Gap(50),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: AuthContainer(
                                raduis: 50,
                                height: 50,
                                onTap: () async {
                                  currentStep.value != 1
                                      ? currentStep.value =
                                          currentStep.value + 1
                                      : null;
                                },
                                color: const Color(0xffFFC629),
                                child: isLoading.value == false
                                    ? Text(
                                        "next",
                                        style: Theme.of(context)
                                            .primaryTextTheme
                                            .titleSmall
                                            ?.copyWith(color: Colors.white),
                                      ).tr()
                                    : const CircularProgressIndicator(),
                              ),
                            ),
                          ],
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                  onPressed: () =>
                                      currentStep.value = currentStep.value - 1,
                                  icon: const Icon(
                                    Icons.arrow_back,
                                    color: Color(0xff16437B),
                                  ),
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "moredetails",
                                      textAlign: TextAlign.center,
                                      style: Theme.of(context)
                                          .primaryTextTheme
                                          .bodyLarge
                                          ?.copyWith(
                                              fontSize: 20,
                                              color: const Color(0xff16437B),
                                              fontWeight: FontWeight.w500),
                                    ).tr(),
                                    Text("fillfilters",
                                            textAlign: TextAlign.center,
                                            style: Theme.of(context)
                                                .primaryTextTheme
                                                .bodyMedium)
                                        .tr(),
                                  ],
                                ),
                                IconButton(
                                  onPressed: () => context.router.pop(),
                                  icon: const Icon(
                                    Icons.close,
                                    color: Color(0xff16437B),
                                  ),
                                ),
                              ],
                            ),
                            const Gap(40),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Flexible(
                                  child: Container(
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.grey.withOpacity(0.5),
                                          width: 1),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: ListTile(
                                      onTap: () => showCupertinoModalPopup(
                                          context: context,
                                          builder: (_) => Container(
                                                height: 250,
                                                color: Colors.white,
                                                child: Column(
                                                  children: [
                                                    SizedBox(
                                                      height: 180,
                                                      child: CupertinoPicker(
                                                          scrollController:
                                                              controller,
                                                          itemExtent: 45,
                                                          onSelectedItemChanged:
                                                              (item) {
                                                            age.value =
                                                                (item + 18)
                                                                    .toString();
                                                          },
                                                          children:
                                                              List.generate(
                                                                  7,
                                                                  (index) =>
                                                                      Center(
                                                                        child: Text((index +
                                                                                18)
                                                                            .toString()),
                                                                      ))),
                                                    ),

                                                    // Close the modal
                                                    Align(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      child: SizedBox(
                                                        height: 70,
                                                        child: CupertinoButton(
                                                          child: const Text(
                                                            'confirm',
                                                            style: TextStyle(
                                                                color: Color(
                                                                    0xff18447B)),
                                                          ).tr(),
                                                          onPressed: () async {
                                                            if (controller
                                                                    .selectedItem ==
                                                                0) {
                                                              age.value = "18";
                                                            }

                                                            context.router
                                                                .pop();
                                                          },
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              )),
                                      trailing: const Icon(
                                        Icons.expand_more,
                                        color: Color(0xff18447B),
                                      ),
                                      title: Text(age.value,
                                          style: Theme.of(context)
                                              .primaryTextTheme
                                              .titleSmall),
                                    ),
                                  ),
                                ),
                                const Gap(10),
                                Flexible(
                                  child: Container(
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.grey.withOpacity(0.5),
                                          width: 1),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: ListTile(
                                      onTap: () => showCupertinoModalPopup(
                                        context: context,
                                        builder: (_) => Container(
                                          height: 250,
                                          color: Colors.white,
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                height: 180,
                                                child: CupertinoPicker(
                                                  scrollController: controller,
                                                  itemExtent: 45,
                                                  onSelectedItemChanged:
                                                      (item) {
                                                    if (item == 0) {
                                                      gender.value =
                                                          "male".tr();
                                                      genderId.value = 1;
                                                    } else {
                                                      gender.value =
                                                          "female".tr();
                                                      genderId.value = 2;
                                                    }
                                                  },
                                                  children: [
                                                    Center(
                                                        child:
                                                            const Text("male")
                                                                .tr()),
                                                    Center(
                                                        child:
                                                            const Text("female")
                                                                .tr()),
                                                  ],
                                                ),
                                              ),

                                              // Close the modal
                                              Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: SizedBox(
                                                  height: 70,
                                                  child: CupertinoButton(
                                                    child: const Text(
                                                      'confirm',
                                                      style: TextStyle(
                                                          color: Color(
                                                              0xff18447B)),
                                                    ).tr(),
                                                    onPressed: () async {
                                                      if (controller
                                                              .selectedItem ==
                                                          0) {
                                                        gender.value =
                                                            "male".tr();
                                                        genderId.value = 1;
                                                      }

                                                      context.router.pop();
                                                    },
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      trailing: const Icon(
                                        Icons.expand_more,
                                        color: Color(0xff18447B),
                                      ),
                                      title: Text(gender.value,
                                          style: Theme.of(context)
                                              .primaryTextTheme
                                              .titleSmall),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const Gap(10),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.grey.withOpacity(0.5),
                                    width: 1),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: ListTile(
                                title: Text(
                                  type.value,
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .titleSmall,
                                ),
                                trailing: const Icon(
                                  Icons.expand_more,
                                  color: Color(0xff18447B),
                                ),
                              ),
                            ),
                            const Gap(10),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.grey.withOpacity(0.5),
                                    width: 1),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: ListTile(
                                onTap: () => showCupertinoModalPopup(
                                  context: context,
                                  builder: (_) => Container(
                                    height: 250,
                                    color: Colors.white,
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 180,
                                          child: CupertinoPicker(
                                            scrollController: controller,
                                            itemExtent: 45,
                                            onSelectedItemChanged: (item) {
                                              city.value = locale == "en"
                                                  ? cities![item].name!
                                                  : cities![item].name_ar!;
                                              cityId.value = cities![item].id!;
                                            },
                                            children: cities!
                                                .map((e) => Center(
                                                      child: Text(locale == "en"
                                                          ? e.name!
                                                          : e.name_ar!),
                                                    ))
                                                .toList(),
                                          ),
                                        ),

                                        // Close the modal
                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: SizedBox(
                                            height: 70,
                                            child: CupertinoButton(
                                              child: const Text(
                                                'confirm',
                                                style: TextStyle(
                                                    color: Color(0xff18447B)),
                                              ).tr(),
                                              onPressed: () async {
                                                if (controller.selectedItem ==
                                                    0) {
                                                  city.value = locale == "en"
                                                      ? cities![0].name!
                                                      : cities![0].name_ar!;
                                                  cityId.value = cities![0].id!;
                                                }
                                                context.router.pop();
                                              },
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                title: Text(
                                  city.value,
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .titleSmall,
                                ),
                                trailing: const Icon(
                                  Icons.expand_more,
                                  color: Color(0xff18447B),
                                ),
                              ),
                            ),
                            const Gap(10),
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.grey.withOpacity(0.5),
                                    width: 1),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: ListTile(
                                onTap: () => showCupertinoModalPopup(
                                  context: context,
                                  builder: (_) => Container(
                                    height: 250,
                                    color: Colors.white,
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 180,
                                          child: CupertinoPicker(
                                            scrollController: controller,
                                            itemExtent: 45,
                                            onSelectedItemChanged: (item) {
                                              year.value = locale == "en"
                                                  ? educationalYears![item]
                                                      .name!
                                                  : educationalYears![item]
                                                      .name_ar!;
                                              yearId.value =
                                                  educationalYears![item].id!;
                                            },
                                            children: educationalYears!
                                                .map((e) => Center(
                                                      child: Text(locale == "en"
                                                          ? e.name!
                                                          : e.name_ar!),
                                                    ))
                                                .toList(),
                                          ),
                                        ),

                                        // Close the modal
                                        Align(
                                          alignment: Alignment.bottomCenter,
                                          child: SizedBox(
                                            height: 70,
                                            child: CupertinoButton(
                                              child: const Text(
                                                'confirm',
                                                style: TextStyle(
                                                    color: Color(0xff18447B)),
                                              ).tr(),
                                              onPressed: () async {
                                                if (controller.selectedItem ==
                                                    0) {
                                                  year.value = locale == "en"
                                                      ? educationalYears![0]
                                                          .name!
                                                      : educationalYears![0]
                                                          .name_ar!;
                                                  yearId.value =
                                                      educationalYears![0].id!;
                                                }

                                                context.router.pop();
                                              },
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                title: Text(
                                  year.value,
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .titleSmall,
                                ),
                                trailing: const Icon(
                                  Icons.expand_more,
                                  color: Color(0xff18447B),
                                ),
                              ),
                            ),
                            const Gap(100),
                            Align(
                              alignment: FractionalOffset.bottomCenter,
                              child: AuthContainer(
                                raduis: 50,
                                height: 50,
                                onTap: () => context.router.push(FilteredRoute(
                                    genderId: genderId.value,
                                    cityId: cityId.value,
                                    educationalYearId: yearId.value,
                                    age: age.value == "age".tr()
                                        ? "18"
                                        : age.value,
                                    scholarshipTypeId: typeId.value)),
                                color: const Color(0xffFFC629),
                                child: isLoading.value == false
                                    ? Text(
                                        "search",
                                        style: Theme.of(context)
                                            .primaryTextTheme
                                            .titleSmall
                                            ?.copyWith(color: Colors.white),
                                      ).tr()
                                    : const CircularProgressIndicator(),
                              ),
                            ),
                          ],
                        ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
