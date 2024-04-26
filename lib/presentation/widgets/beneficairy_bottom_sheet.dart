import 'package:alaman/application/meetinghistory/new.meeting.use_case/new.meeting.use.case.dart';
import 'package:alaman/application/meetinghistory/new.meeting.use_case/new.meeting.use.case.input.dart';
import 'package:alaman/application/provider/language.provider.dart';
import 'package:alaman/constants.dart';
import 'package:alaman/domain/marks/model/marks.model.dart';
import 'package:alaman/domain/meetingmethod/model/meetingmethods.model.dart';
import 'package:alaman/presentation/widgets/auth_container.dart';
import 'package:alaman/presentation/widgets/auth_field.dart';
import 'package:alaman/routes/app_route.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart' as locale;
import 'package:easy_localization/easy_localization.dart' as easy;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

class BeneficiaryBottomSheet extends HookConsumerWidget {
  final List<MarksModel>? marks;
  final String? beneficiaryId;
  final List<MeetingMethodsModel> methods;
  const BeneficiaryBottomSheet({
    required this.marks,
    required this.beneficiaryId,
    required this.methods,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useState(GlobalKey<FormState>());
    var viewInsets = MediaQuery.of(context).viewInsets.bottom;
    final locale = ref.watch(languageHiveNotifierProvider);

    final selectedIndex1 = useState(-1);
    final currentStep = useState(0);
    final options = useState<List<String>>(["downloadmarks", "setupmeeting", "meetinghistory"]);
    final startDate = useState("startdate".tr());
    final notes = useState("notes".tr());
    final isLoading = useState(false);
    final time = useState("time".tr());
    final controller = FixedExtentScrollController();
    final method = useState("method".tr());
    final methodId = useState(0);
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
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 500),
                child: currentStep.value == 0
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
                                "options",
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
                              color: selectedIndex1.value == index ? const Color(0xff2A7DE1) : Colors.white,
                              height: 50,
                              raduis: 40,
                              onTap: () async {
                                selectedIndex1.value = index;
                                if (index == 0) {
                                  context.router.push(MarksHistoryRoute(marks: marks!));
                                } else if (index == 1) {
                                  currentStep.value = currentStep.value + 1;
                                  print(currentStep.value);
                                } else {
                                  context.router.push(MeetingHistoryRoute());
                                }
                              },
                              child: Text(
                                options.value[index],
                                style: Theme.of(context).primaryTextTheme.titleSmall!.copyWith(color: selectedIndex1.value == index ? Colors.white : const Color(0xff16437B)),
                              ).tr(),
                            ),
                            itemCount: options.value.length,
                          ),
                          const Gap(50),
                        ],
                      )
                    : Column(
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
                                                  initialDateTime: DateTime.now().add(const Duration(seconds: 1)),
                                                  minimumDate: DateTime.now(),
                                                  maximumDate: DateTime.now().add(const Duration(days: 365)),
                                                  onDateTimeChanged: (val) async {
                                                    startDate.value = easy.DateFormat('yyyy-MM-dd').format(val);
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
                                                    startDate.value == "startdate".tr() ? startDate.value = easy.DateFormat('yyyy-MM-dd').format(DateTime.now()) : null;
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
                                                  mode: CupertinoDatePickerMode.time,
                                                  initialDateTime: DateTime.now().add(const Duration(seconds: 1)),
                                                  minimumDate: DateTime.now(),
                                                  maximumDate: DateTime.now().add(const Duration(hours: 24)),
                                                  onDateTimeChanged: (val) async {
                                                    time.value = easy.DateFormat('HH:mm:ss').format(val);
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
                                                    time.value == "time".tr() ? time.value = time.value = easy.DateFormat('HH:mm:ss').format(DateTime.now()) : null;
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
                                    time.value,
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
                                        color: Colors.white,
                                        child: Column(
                                          children: [
                                            SizedBox(
                                              height: 180,
                                              child: CupertinoPicker(
                                                  scrollController: controller,
                                                  itemExtent: 45,
                                                  onSelectedItemChanged: (item) async {
                                                    method.value = locale == "en" ? methods[item].name! : methods[item].name_ar!;
                                                    methodId.value = methods[item].id!;
                                                  },
                                                  children: methods!
                                                      .map((e) => Center(
                                                            child: Text((locale == "en" ? e.name! : e.name_ar!).toString()),
                                                          ))
                                                      .toList()),
                                            ),
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
                                                      method.value = locale == "en" ? methods[0].name! : methods[0].name_ar!;
                                                      methodId.value = methods[0].id!;
                                                    }
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
                                    method.value,
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
                                if (startDate.value != "startdate".tr() || time.value != "time".tr()) {
                                  isLoading.value = true;
                                  ref
                                      .read(newMeetingUseCaseProvider)
                                      .execute(NewMeetingUseCaseInput(
                                          date: startDate.value, meetingMethodsId: methodId.value.toString(), time: time.value, beneficiaryId: beneficiaryId, notes: notes.value))
                                      .then((value) => value.fold((l) {
                                            isLoading.value = false;
                                            context.router.maybePop();
                                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("check internet connection")));
                                          }, (r) {
                                            isLoading.value = false;
                                            context.router.maybePop();
                                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("meeting has been placed")));
                                          }));
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
                      ),
              )),
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
    final ImageStream imageStream = image.image.resolve(ImageConfiguration());
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
