import 'package:alaman/application/provider/language.provider.dart';
import 'package:alaman/application/provider/user.repository.provider.dart';
import 'package:alaman/domain/city/model/city.model.dart';
import 'package:alaman/domain/donationfrequency/model/donation.frequency.model.dart';
import 'package:alaman/domain/educationalyear/model/educationalyear.model.dart';
import 'package:alaman/domain/scholarshiptypes/model/scholarshiptypes.model.dart';
import 'package:alaman/presentation/widgets/auth_container.dart';
import 'package:alaman/presentation/widgets/auth_field.dart';
import 'package:alaman/presentation/widgets/error_dialog.dart';
import 'package:alaman/presentation/widgets/step_indicator.dart';
import 'package:alaman/routes/app_route.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart' as locale;
import 'package:easy_localization/easy_localization.dart' as easey;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SponserShipBottomSheet extends HookConsumerWidget {
  final List<DonationFrequencyModel> donationFrequency;
  final List<ScholarshipTypesModel>? scholarships;
  final List<EducationalYearModel>? educationalYears;
  final List<CityModel>? cities;
  final double? startAmount;
  final double? endAmount;
  const SponserShipBottomSheet({
    required this.scholarships,
    required this.donationFrequency,
    required this.educationalYears,
    required this.cities,
    required this.startAmount,
    required this.endAmount,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(languageHiveNotifierProvider);

    List<DonationFrequencyModel> modifiableList = List.from(donationFrequency);
    modifiableList.insert(0, const DonationFrequencyModel(id: -1, name: "One time donation", name_ar: "التبرع لمرة واحدة"));

    final year = useState("year".tr());
    final yearId = useState(0);
    final gender = useState("gender".tr());
    final genderId = useState(0);
    final city = useState("governate".tr());
    final cityId = useState(0);
    final age = useState("age".tr());
    final formKey = useState(GlobalKey<FormState>());
    var viewInsets = MediaQuery.of(context).viewInsets.bottom;
    final controller = FixedExtentScrollController();
    final isLoading = useState(false);
    final selectedIndex = useState(0);
    final selectedIndex1 = useState(0);
    final currentStep = useState(0);
    final type = useState(locale == "en" ? modifiableList[selectedIndex.value].name! : modifiableList[selectedIndex.value].name_ar!);
    final typeId = useState(modifiableList[selectedIndex.value].id!);
    final type1 = useState(locale == "en" ? scholarships![selectedIndex1.value].name! : scholarships![selectedIndex1.value].name_ar!);
    final typeId1 = useState(scholarships![selectedIndex1.value].id!);
    final sliderValue = useState(startAmount!);
    final notes = useState("notes".tr());
    final startDate = useState("startdate".tr());
    final endDate = useState("enddate".tr());
    final scheduleDates = useState<List<String>>([]);
    final scheduledAmount = useState("");
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(50)),
      height: MediaQuery.of(context).size.height * 0.75,
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
                  top: -30,
                  child: Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(5),
                    height: 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: StepIndicator(currentStep: currentStep.value, stepCount: 6),
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
                                    onPressed: () => context.router.maybePop(),
                                    icon: const Icon(
                                      Icons.arrow_back,
                                      color: Color(0xff16437B),
                                    ),
                                  ),
                                  Text(
                                    "donationamount",
                                    textAlign: TextAlign.center,
                                    style: Theme.of(context).primaryTextTheme.bodyMedium?.copyWith(fontSize: 20, color: const Color(0xff16437B), fontWeight: FontWeight.bold),
                                  ).tr(),
                                  IconButton(
                                    onPressed: () => context.router.maybePop(),
                                    icon: const Icon(
                                      Icons.close,
                                      color: Color(0xff16437B),
                                    ),
                                  ),
                                ],
                              ),
                              const Gap(10),
                              Text(
                                "slidefor",
                                textAlign: TextAlign.center,
                                style: Theme.of(context).primaryTextTheme.bodyMedium,
                              ).tr(),
                              const Gap(15),
                              Container(
                                decoration: BoxDecoration(border: Border.all(color: Colors.grey.withOpacity(0.5), width: 1)),
                                height: 30,
                                width: 100,
                                alignment: Alignment.center,
                                child: Center(
                                  child: Text(
                                    sliderValue.value.round().toString(),
                                  ),
                                ),
                              ),
                              const Gap(10),
                              SliderTheme(
                                data: SliderTheme.of(context).copyWith(
                                  thumbShape: SliderThumbImage(Image.asset('assets/coin1.png')),
                                  // Adjust other theme properties as needed
                                ),
                                child: Slider(
                                  value: sliderValue.value,
                                  min: startAmount!,
                                  max: endAmount!,
                                  divisions: 9999, // Optional: This enables discrete values
                                  label: sliderValue.value.round().toString(),
                                  onChanged: (value) {
                                    sliderValue.value = value;
                                  },
                                ),
                              ),
                              const Gap(50),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: AuthContainer(
                                  raduis: 50,
                                  height: 50,
                                  onTap: () async {
                                    currentStep.value = currentStep.value + 1;
                                  },
                                  color: const Color(0xffFFC629),
                                  child: isLoading.value == false
                                      ? Text(
                                          "next",
                                          style: Theme.of(context).primaryTextTheme.titleSmall?.copyWith(color: Colors.white),
                                        ).tr()
                                      : const CircularProgressIndicator(),
                                ),
                              ),
                            ],
                          )
                        : currentStep.value == 1
                            ? Column(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      IconButton(
                                        onPressed: () => currentStep.value = currentStep.value - 1,
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
                                            style: Theme.of(context).primaryTextTheme.bodyLarge?.copyWith(fontSize: 20, color: const Color(0xff16437B), fontWeight: FontWeight.w500),
                                          ).tr(),
                                          Text("choosegrant", textAlign: TextAlign.center, style: Theme.of(context).primaryTextTheme.bodyMedium).tr(),
                                        ],
                                      ),
                                      IconButton(
                                        onPressed: () => context.router.maybePop(),
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
                                    separatorBuilder: (context, index) => const Gap(10),
                                    shrinkWrap: true,
                                    itemBuilder: (context, index) => AuthContainer(
                                      color: selectedIndex.value == index ? const Color(0xff2A7DE1) : Colors.white,
                                      height: 50,
                                      raduis: 40,
                                      onTap: () async {
                                        selectedIndex.value = index;
                                        type1.value = locale == "en" ? scholarships![index].name! : scholarships![index].name_ar!;
                                        typeId1.value = scholarships![index].id!;
                                      },
                                      child: Text(
                                        locale == "en" ? scholarships![index].name! : scholarships![index].name_ar!,
                                        textAlign: TextAlign.center,
                                        style: Theme.of(context).primaryTextTheme.titleSmall!.copyWith(color: selectedIndex.value == index ? Colors.white : const Color(0xff16437B)),
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
                                        currentStep.value = currentStep.value + 1;
                                      },
                                      color: const Color(0xffFFC629),
                                      child: isLoading.value == false
                                          ? Text(
                                              "next",
                                              style: Theme.of(context).primaryTextTheme.titleSmall?.copyWith(color: Colors.white),
                                            ).tr()
                                          : const CircularProgressIndicator(),
                                    ),
                                  ),
                                ],
                              )
                            : currentStep.value == 2
                                ? Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.min,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          IconButton(
                                            onPressed: () => currentStep.value = currentStep.value - 1,
                                            icon: const Icon(
                                              Icons.arrow_back,
                                              color: Color(0xff16437B),
                                            ),
                                          ),
                                          Text(
                                            "setuprecuring",
                                            textAlign: TextAlign.center,
                                            style: Theme.of(context).primaryTextTheme.bodyMedium?.copyWith(fontSize: 20, color: const Color(0xff16437B), fontWeight: FontWeight.bold),
                                          ).tr(),
                                          IconButton(
                                            onPressed: () => context.router.maybePop(),
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
                                        separatorBuilder: (context, index) => const Gap(10),
                                        shrinkWrap: true,
                                        itemBuilder: (context, index) => AuthContainer(
                                          color: selectedIndex.value == index ? const Color(0xff2A7DE1) : Colors.white,
                                          height: 50,
                                          raduis: 40,
                                          onTap: () async {
                                            selectedIndex.value = index;
                                            type.value = modifiableList[index].name!;
                                            typeId.value = modifiableList[index].id!;
                                            print("object");
                                          },
                                          child: Text(
                                            modifiableList[index].name!,
                                            style: Theme.of(context).primaryTextTheme.titleSmall!.copyWith(color: selectedIndex.value == index ? Colors.white : const Color(0xff16437B)),
                                          ),
                                        ),
                                        itemCount: modifiableList.length,
                                      ),
                                      const Gap(50),
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: AuthContainer(
                                          raduis: 50,
                                          height: 50,
                                          onTap: () async {
                                            typeId.value != -1 ? currentStep.value = currentStep.value + 1 : currentStep.value = currentStep.value + 3;
                                          },
                                          color: const Color(0xffFFC629),
                                          child: isLoading.value == false
                                              ? Text(
                                                  "next",
                                                  style: Theme.of(context).primaryTextTheme.titleSmall?.copyWith(color: Colors.white),
                                                ).tr()
                                              : const CircularProgressIndicator(),
                                        ),
                                      ),
                                    ],
                                  )
                                : currentStep.value == 3
                                    ? Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              IconButton(
                                                onPressed: () => currentStep.value = currentStep.value - 1,
                                                icon: const Icon(
                                                  Icons.arrow_back,
                                                  color: Color(0xff16437B),
                                                ),
                                              ),
                                              Text(
                                                "setup",
                                                textAlign: TextAlign.center,
                                                style: Theme.of(context).primaryTextTheme.bodyMedium?.copyWith(fontSize: 20, color: const Color(0xff16437B), fontWeight: FontWeight.bold),
                                              ).tr(),
                                              IconButton(
                                                onPressed: () => context.router.maybePop(),
                                                icon: const Icon(
                                                  Icons.close,
                                                  color: Color(0xff16437B),
                                                ),
                                              ),
                                            ],
                                          ),
                                          const Gap(40),
                                          GestureDetector(
                                            onTap: () async {
                                              await showCupertinoModalPopup(
                                                  context: context,
                                                  builder: (_) => Container(
                                                        height: 250,
                                                        color: const Color.fromARGB(255, 255, 255, 255),
                                                        child: Column(
                                                          children: [
                                                            SizedBox(
                                                              height: 180,
                                                              child: CupertinoDatePicker(
                                                                  dateOrder: DatePickerDateOrder.dmy,
                                                                  mode: CupertinoDatePickerMode.date,
                                                                  initialDateTime: DateTime.now(),
                                                                  minimumDate: DateTime(1980),
                                                                  maximumDate: DateTime.now(),
                                                                  onDateTimeChanged: (val) async {
                                                                    startDate.value = easey.DateFormat('yyyy-MM-dd').format(val);
                                                                  }),
                                                            ),

                                                            // Close the modal
                                                            Align(
                                                              alignment: Alignment.bottomCenter,
                                                              child: SizedBox(
                                                                height: 70,
                                                                child: CupertinoButton(
                                                                  child: const Text('confirm', style: TextStyle(color: Color(0xff18447B))).tr(),
                                                                  onPressed: () async {
                                                                    startDate.value == "startdate".tr() ? startDate.value = easey.DateFormat('yyyy-MM-dd').format(DateTime.now()) : null;
                                                                    context.router.maybePop();
                                                                  },
                                                                ),
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      ));
                                            },
                                            child: Container(
                                              padding: const EdgeInsets.only(left: 30, top: 10, bottom: 10, right: 10),
                                              width: double.infinity,
                                              height: 70,
                                              alignment: Alignment.centerLeft,
                                              decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(15))),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text(
                                                    startDate.value,
                                                    style: const TextStyle(
                                                      color: Colors.black26,
                                                      fontSize: 17,
                                                      fontWeight: FontWeight.w800,
                                                    ),
                                                  ),
                                                  const Icon(
                                                    Icons.calendar_month,
                                                    color: Colors.black26,
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          GestureDetector(
                                            onTap: () async {
                                              await showCupertinoModalPopup(
                                                  context: context,
                                                  builder: (_) => Container(
                                                        height: 250,
                                                        color: const Color.fromARGB(255, 255, 255, 255),
                                                        child: Column(
                                                          children: [
                                                            SizedBox(
                                                              height: 180,
                                                              child: CupertinoDatePicker(
                                                                  dateOrder: DatePickerDateOrder.dmy,
                                                                  mode: CupertinoDatePickerMode.date,
                                                                  initialDateTime: DateTime.now().add(const Duration(seconds: 1)),
                                                                  minimumDate: DateTime.now(),
                                                                  maximumDate: DateTime.now().add(Duration(days: 365)),
                                                                  onDateTimeChanged: (val) async {
                                                                    endDate.value = easey.DateFormat('yyyy-MM-dd').format(val);
                                                                  }),
                                                            ),

                                                            // Close the modal
                                                            Align(
                                                              alignment: Alignment.bottomCenter,
                                                              child: SizedBox(
                                                                height: 70,
                                                                child: CupertinoButton(
                                                                  child: const Text('confirm', style: TextStyle(color: Color(0xff18447B))).tr(),
                                                                  onPressed: () async {
                                                                    endDate.value == "enddate".tr() ? endDate.value = startDate.value = easey.DateFormat('yyyy-MM-dd').format(DateTime.now()) : null;
                                                                    context.router.maybePop();
                                                                  },
                                                                ),
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                      ));
                                            },
                                            child: Container(
                                              padding: const EdgeInsets.only(left: 30, top: 10, bottom: 10, right: 10),
                                              width: double.infinity,
                                              height: 70,
                                              alignment: Alignment.centerLeft,
                                              decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(15))),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Text(
                                                    endDate.value,
                                                    style: const TextStyle(
                                                      color: Colors.black26,
                                                      fontSize: 17,
                                                      fontWeight: FontWeight.w800,
                                                    ),
                                                  ),
                                                  const Icon(
                                                    Icons.calendar_month,
                                                    color: Colors.black26,
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          AuthField(
                                            borderColor: Colors.white,
                                            height: 100,
                                            hint: notes.value,
                                            onChanged: (value) => notes.value = value,
                                          ),
                                          const Gap(50),
                                          Align(
                                            alignment: Alignment.bottomCenter,
                                            child: AuthContainer(
                                              raduis: 50,
                                              height: 50,
                                              onTap: () async {
                                                if (startDate.value != "startdate".tr() || endDate.value != "enddate".tr()) {
                                                  isLoading.value = true;
                                                  final schedule = await ref.read(
                                                      getScheduleProvider(amount: sliderValue.value, donationfrequencyid: "${typeId.value}", endate: endDate.value, startDate: startDate.value).future);
                                                  return schedule.fold((l) => isLoading.value = false, (r) {
                                                    isLoading.value = false;
                                                    scheduleDates.value = r.item1;
                                                    scheduledAmount.value = r.item2;
                                                    currentStep.value = currentStep.value + 1;
                                                  });
                                                } else {
                                                  await showDialog(
                                                      context: context,
                                                      barrierDismissible: false,
                                                      builder: (context) => ErrorDialog(
                                                            description: "datecheck",
                                                          ));
                                                }
                                              },
                                              color: const Color(0xffFFC629),
                                              child: isLoading.value == false
                                                  ? Text(
                                                      "next",
                                                      style: Theme.of(context).primaryTextTheme.titleSmall?.copyWith(color: Colors.white),
                                                    ).tr()
                                                  : const CircularProgressIndicator(),
                                            ),
                                          ),
                                        ],
                                      )
                                    : currentStep.value == 4
                                        ? Column(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            mainAxisSize: MainAxisSize.min,
                                            children: <Widget>[
                                              Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  IconButton(
                                                    onPressed: () => currentStep.value = currentStep.value - 1,
                                                    icon: const Icon(
                                                      Icons.arrow_back,
                                                      color: Color(0xff16437B),
                                                    ),
                                                  ),
                                                  Text(
                                                    "recurringschedule",
                                                    textAlign: TextAlign.center,
                                                    style: Theme.of(context).primaryTextTheme.bodyMedium?.copyWith(fontSize: 20, color: const Color(0xff16437B), fontWeight: FontWeight.bold),
                                                  ).tr(),
                                                  IconButton(
                                                    onPressed: () => context.router.maybePop(),
                                                    icon: const Icon(
                                                      Icons.close,
                                                      color: Color(0xff16437B),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const Gap(10),
                                              SizedBox(
                                                height: 500,
                                                child: ListView.separated(
                                                  separatorBuilder: (context, index) => Gap(5),
                                                  itemBuilder: (context, index) => ListTile(
                                                    title: Text(
                                                      scheduleDates.value[index],
                                                      style: Theme.of(context).primaryTextTheme.titleSmall,
                                                    ),
                                                    trailing: Text("${scheduledAmount.value}${"jd".tr()}"),
                                                  ),
                                                  itemCount: scheduleDates.value.length,
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.bottomCenter,
                                                child: AuthContainer(
                                                  raduis: 50,
                                                  height: 50,
                                                  onTap: () async {
                                                    currentStep.value = currentStep.value + 1;
                                                  },
                                                  color: const Color(0xffFFC629),
                                                  child: isLoading.value == false
                                                      ? Text(
                                                          "confirm",
                                                          style: Theme.of(context).primaryTextTheme.titleSmall?.copyWith(color: Colors.white),
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
                                                    onPressed: () => typeId.value != -1 ? currentStep.value = currentStep.value - 1 : currentStep.value = currentStep.value - 3,
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
                                                        style: Theme.of(context).primaryTextTheme.bodyLarge?.copyWith(fontSize: 20, color: const Color(0xff16437B), fontWeight: FontWeight.w500),
                                                      ).tr(),
                                                      Text("fillfilters", textAlign: TextAlign.center, style: Theme.of(context).primaryTextTheme.bodyMedium).tr(),
                                                    ],
                                                  ),
                                                  IconButton(
                                                    onPressed: () => context.router.maybePop(),
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
                                                        border: Border.all(color: Colors.grey.withOpacity(0.5), width: 1),
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
                                                                              age.value = (item + 18).toString();
                                                                            },
                                                                            children: List.generate(
                                                                                7,
                                                                                (index) => Center(
                                                                                      child: Text((index + 18).toString()),
                                                                                    ))),
                                                                      ),

                                                                      // Close the modal
                                                                      Align(
                                                                        alignment: Alignment.bottomCenter,
                                                                        child: SizedBox(
                                                                          height: 70,
                                                                          child: CupertinoButton(
                                                                            child: const Text(
                                                                              'confirm',
                                                                              style: TextStyle(color: Color(0xff18447B)),
                                                                            ).tr(),
                                                                            onPressed: () async {
                                                                              if (controller.selectedItem == 0) {
                                                                                age.value = "18";
                                                                              }

                                                                              context.router.maybePop();
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
                                                        title: Text(age.value, style: Theme.of(context).primaryTextTheme.titleSmall),
                                                      ),
                                                    ),
                                                  ),
                                                  const Gap(10),
                                                  Flexible(
                                                    child: Container(
                                                      alignment: Alignment.center,
                                                      decoration: BoxDecoration(
                                                        border: Border.all(color: Colors.grey.withOpacity(0.5), width: 1),
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
                                                                      if (item == 0) {
                                                                        gender.value = "male".tr();
                                                                        genderId.value = 1;
                                                                      } else {
                                                                        gender.value = "female".tr();
                                                                        genderId.value = 2;
                                                                      }
                                                                    },
                                                                    children: [
                                                                      Center(child: const Text("male").tr()),
                                                                      Center(child: const Text("female").tr()),
                                                                    ],
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
                                                                        style: TextStyle(color: Color(0xff18447B)),
                                                                      ).tr(),
                                                                      onPressed: () async {
                                                                        if (controller.selectedItem == 0) {
                                                                          gender.value = "male".tr();
                                                                          genderId.value = 1;
                                                                        }

                                                                        context.router.maybePop();
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
                                                        title: Text(gender.value, style: Theme.of(context).primaryTextTheme.titleSmall),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const Gap(10),
                                              Container(
                                                decoration: BoxDecoration(
                                                  border: Border.all(color: Colors.grey.withOpacity(0.5), width: 1),
                                                  borderRadius: BorderRadius.circular(5),
                                                ),
                                                child: ListTile(
                                                  title: Text(
                                                    type1.value,
                                                    style: Theme.of(context).primaryTextTheme.titleSmall,
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
                                                  border: Border.all(color: Colors.grey.withOpacity(0.5), width: 1),
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
                                                                city.value = locale == "en" ? cities![item].name! : cities![item].name_ar!;
                                                                cityId.value = cities![item].id!;
                                                              },
                                                              children: cities!
                                                                  .map((e) => Center(
                                                                        child: Text(locale == "en" ? e.name! : e.name_ar!),
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
                                                                  style: TextStyle(color: Color(0xff18447B)),
                                                                ).tr(),
                                                                onPressed: () async {
                                                                  if (controller.selectedItem == 0) {
                                                                    city.value = locale == "en" ? cities![0].name! : cities![0].name_ar!;
                                                                    cityId.value = cities![0].id!;
                                                                  }
                                                                  context.router.maybePop();
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
                                                    style: Theme.of(context).primaryTextTheme.titleSmall,
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
                                                  border: Border.all(color: Colors.grey.withOpacity(0.5), width: 1),
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
                                                                year.value = locale == "en" ? educationalYears![item].name! : educationalYears![item].name_ar!;
                                                                yearId.value = educationalYears![item].id!;
                                                              },
                                                              children: educationalYears!
                                                                  .map((e) => Center(
                                                                        child: Text(locale == "en" ? e.name! : e.name_ar!),
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
                                                                  style: TextStyle(color: Color(0xff18447B)),
                                                                ).tr(),
                                                                onPressed: () async {
                                                                  if (controller.selectedItem == 0) {
                                                                    year.value = locale == "en" ? educationalYears![0].name! : educationalYears![0].name_ar!;
                                                                    yearId.value = educationalYears![0].id!;
                                                                  }

                                                                  context.router.maybePop();
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
                                                    style: Theme.of(context).primaryTextTheme.titleSmall,
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
                                                  onTap: () {
                                                    final notifier = ref.read(paginatedBeneficiariesNotifierProvider.notifier);
                                                    notifier.resetState();
                                                    context.router.maybePop();
                                                    context.router.push(FilteredRoute(
                                                        startDate: startDate.value,
                                                        endDate: endDate.value,
                                                        donationFrequencyId: typeId.value == -1 ? null : typeId.value,
                                                        donationAmount: sliderValue.value.toInt(),
                                                        sponsershipEnd: endAmount!.toInt(),
                                                        recuring: typeId.value == -1 ? 0 : 1,
                                                        sponsershipSart: startAmount!.toInt(),
                                                        isCorporate: true,
                                                        genderId: genderId.value,
                                                        cityId: cityId.value,
                                                        educationalYearId: yearId.value,
                                                        age: age.value == "age".tr() ? "18" : age.value,
                                                        scholarshipTypeId: typeId1.value));
                                                  },
                                                  color: const Color(0xffFFC629),
                                                  child: isLoading.value == false
                                                      ? Text(
                                                          "search",
                                                          style: Theme.of(context).primaryTextTheme.titleSmall?.copyWith(color: Colors.white),
                                                        ).tr()
                                                      : const CircularProgressIndicator(),
                                                ),
                                              ),
                                            ],
                                          )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SliderThumbImage extends SliderComponentShape {
  final Image image;
  final double thumbSize; // Added thumbSize for scaling

  SliderThumbImage(this.image, {this.thumbSize = 20.0}); // Default size

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size(thumbSize, thumbSize); // Use thumbSize for the thumb size
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
    required Size sizeWithOverflow,
  }) {
    final ImageStream imageStream = image.image.resolve(const ImageConfiguration());
    final ImageStreamListener listener = ImageStreamListener((ImageInfo info, bool _) {
      final image = info.image;
      final paint = Paint();

      // Scale the image to fit the thumbSize while maintaining aspect ratio
      double scale = thumbSize / image.width;
      double newWidth = image.width * scale;
      double newHeight = image.height * scale;

      // Center the scaled image on the slider's thumb position
      Offset imageOffset = Offset(
        center.dx - (newWidth / 2),
        center.dy - (newHeight / 2),
      );

      context.canvas.drawImageRect(
        image,
        Rect.fromLTWH(0, 0, image.width.toDouble(), image.height.toDouble()), // Source rectangle
        Rect.fromLTWH(imageOffset.dx, imageOffset.dy, newWidth, newHeight), // Destination rectangle
        paint,
      );
    });

    imageStream.addListener(listener);
    // Important: Remove the listener once the painting is done to prevent memory leaks
    imageStream.removeListener(listener);
  }
}

double calculateDynamicTopPosition(double availableHeight, int currentStep) {
  // Implement logic to adjust 'top' based on availableHeight and currentStep
  // This is a placeholder logic, adjust it according to your UI needs
  double baseTop = -30; // Your current fixed top value
  // Example adjustment, you might want to replace this with your actual logic
  double adjustedTop = baseTop - (currentStep * 10); // Example dynamic adjustment
  return adjustedTop;
}
