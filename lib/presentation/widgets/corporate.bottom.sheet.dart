import 'package:alaman/application/donation/init_donation_use_case/init_donation_use_case.dart';
import 'package:alaman/application/donation/init_donation_use_case/init_donation_use_case.input.dart';
import 'package:alaman/application/provider/language.provider.dart';
import 'package:alaman/domain/paymentmethod/model/payment.method.model.dart';
import 'package:alaman/presentation/widgets/auth_container.dart';
import 'package:alaman/routes/app_route.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class CorporateBottomSheet extends HookConsumerWidget {
  final List<PaymentMethodModel>? paymentMethods;
  final int? recuring;
  final List<int>? beneficiaries;
  final int? donationFrequencyId;
  final double? totalAmount;
  final String? startDate;
  final String? endDate;
  const CorporateBottomSheet({
    super.key,
    required this.totalAmount,
    required this.recuring,
    required this.beneficiaries,
    required this.paymentMethods,
    this.startDate,
    this.endDate,
    this.donationFrequencyId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(languageHiveNotifierProvider);
    List<PaymentMethodModel> modifiableList2 = List.from(paymentMethods!);
    recuring == 1 ? modifiableList2.removeWhere((element) => element.name == "E-Fawateercom") : null;
    final formKey = useState(GlobalKey<FormState>());
    var viewInsets = MediaQuery.of(context).viewInsets.bottom;
    final controller = FixedExtentScrollController();
    final isLoading = useState(false);
    final selectedIndex = useState(0);
    final currentStep = useState(0);
    final type = useState(locale == "en" ? modifiableList2![selectedIndex.value].name! : modifiableList2![selectedIndex.value].name_ar!);
    final typeId = useState(modifiableList2![selectedIndex.value].id);

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(50)),
      height: MediaQuery.of(context).size.height * 0.8,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Form(
        key: formKey.value,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(bottom: viewInsets),
            child: Column(
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
                      "choosepayment",
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
                      type.value = locale == "en" ? modifiableList2![index].name! : modifiableList2![index].name_ar!;
                      typeId.value = modifiableList2![index].id!;
                    },
                    child: Text(
                      locale == "en" ? modifiableList2![index].name! : modifiableList2![index].name_ar!,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).primaryTextTheme.titleSmall!.copyWith(color: selectedIndex.value == index ? const Color.fromARGB(255, 58, 0, 0) : const Color(0xff16437B)),
                    ),
                  ),
                  itemCount: modifiableList2!.length,
                ),
                const Gap(50),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: AuthContainer(
                    raduis: 50,
                    height: 50,
                    onTap: () async {
                      isLoading.value = true; // Show loading indicator

                      // Perform your logic here, for example, initiating a donation
                      if (typeId.value == paymentMethods!.firstWhere((element) => element.name == "Cash").id) {
                        isLoading.value = false;
                        context.router.maybePop();
                        context.router.push(LocationCheckerRoute(
                            paymentMethod: typeId.value,
                            donationTypeId: 1,
                            donationFrequencyId: donationFrequencyId,
                            startDate: startDate,
                            endDate: endDate,
                            recurring: recuring,
                            amount: totalAmount,
                            beneficiaries: beneficiaries));
                      } else {
                        await ref
                            .read(initDonationUseCaseProvider)
                            .execute(
                              InitDonationUseCaseInput(
                                  paymentMethodId: typeId.value,
                                  donationTypeId: 1,
                                  isRecurring: recuring,
                                  totalAmount: totalAmount,
                                  startDate: startDate,
                                  endDate: endDate,
                                  beneficiaryIds: beneficiaries,
                                  donationFrequencyId: donationFrequencyId),
                            )
                            .then((value) => value.fold(
                                  (l) async {
                                    // Handle error
                                    isLoading.value = false; // Hide loading indicator
                                    Navigator.of(context).pop(); // Close the bottom sheet
                                  },
                                  (r) async {
                                    isLoading.value = false; // Hide loading indicator
                                    // Navigate to PaymentRoute
                                    // First, pop the bottom sheet
                                    context.router.maybePop();
                                    // Then navigate to PaymentRoute
                                    AutoRouter.of(context).push(PaymentRoute(baseurl: r["url"]));
                                  },
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
            ),
          ),
        ),
      ),
    );
  }
}
