import 'package:alaman/application/donation/init_donation_use_case/init_donation_use_case.dart';
import 'package:alaman/application/donation/init_donation_use_case/init_donation_use_case.input.dart';
import 'package:alaman/application/provider/language.provider.dart';
import 'package:alaman/presentation/screens/main_screen.dart';
import 'package:alaman/presentation/widgets/auth_container.dart';
import 'package:alaman/routes/app_route.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart' as easy;
import 'package:easy_localization/easy_localization.dart' as locale;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TimePickerBottomSheet extends HookConsumerWidget {
  final int? paymentMethod;
  final int? donationTypeId;
  final int? recurring;
  final int? donationFrequencyId;
  final String? startDate;
  final String? endDate;
  final double? amount;
  final List<int>? beneficiaries;
  final String? notes;
  final LatLng? location;
  const TimePickerBottomSheet({
    this.paymentMethod,
    this.donationTypeId,
    this.recurring,
    this.donationFrequencyId,
    this.startDate,
    this.endDate,
    this.amount,
    this.beneficiaries,
    this.notes,
    this.location,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formKey = useState(GlobalKey<FormState>());
    var viewInsets = MediaQuery.of(context).viewInsets.bottom;
    final locale = ref.watch(languageHiveNotifierProvider);
    final currentStep = useState(0);
    final isLoading = useState(false);
    final time = useState("time".tr());
    final controller = FixedExtentScrollController();
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
                child: Column(
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
                          "Pick Time",
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
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: AuthContainer(
                        raduis: 50,
                        height: 50,
                        onTap: () async {
                          isLoading.value = true;
                          await ref
                              .read(initDonationUseCaseProvider)
                              .execute(
                                InitDonationUseCaseInput(
                                  paymentMethodId: paymentMethod,
                                  donationTypeId: donationTypeId,
                                  isRecurring: recurring,
                                  donationFrequencyId: donationFrequencyId,
                                  endDate: endDate,
                                  startDate: startDate,
                                  notes: notes,
                                  beneficiaryIds: beneficiaries,
                                  location: {"lat": "${location?.latitude}", "lng": "${location?.longitude}"},
                                  totalAmount: amount,
                                ),
                              )
                              .then((value) => value.fold(
                                    (l) async {
                                      // Handle error
                                      isLoading.value = false; // Hide loading indicator
                                    },
                                    (r) async {
                                      isLoading.value = false; // Hide loading indicator
                                      // Navigate to PaymentRoute
                                      // First, pop the bottom sheet
                                      // Then navigate to PaymentRoute
                                      ref.read(isOrderedProvider.notifier).state = true;
                                      context.router.replaceAll([const MainRoute()]);
                                    },
                                  ));
                        },
                        color: const Color(0xffFFC629),
                        child: isLoading.value == false
                            ? Text(
                                "next",
                                style: Theme.of(context).primaryTextTheme.titleSmall?.copyWith(color: Colors.white),
                              ).tr()
                            : const CircularProgressIndicator(),
                      ),
                    )
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
