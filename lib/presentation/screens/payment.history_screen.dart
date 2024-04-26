import 'package:alaman/application/donation/cancel_donation_use_case/cancel_donation_use_case.dart';
import 'package:alaman/application/donation/cancel_donation_use_case/cancel_donation_use_case.input.dart';
import 'package:alaman/application/provider/language.provider.dart';
import 'package:alaman/constants.dart';
import 'package:alaman/domain/donordonation/model/donor.donation.model.dart';
import 'package:alaman/presentation/widgets/auth_container.dart';
import 'package:alaman/presentation/widgets/custom_appbar.dart';
import 'package:alaman/presentation/widgets/responsive_widget.dart';
import 'package:alaman/routes/app_route.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';

@RoutePage()
class PaymentHistoryScreen extends HookConsumerWidget {
  final List<DonorDonation> donationHistory;
  const PaymentHistoryScreen({
    super.key,
    required this.donationHistory,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(languageHiveNotifierProvider);

    List<DonorDonation> modifiableList = List.from(donationHistory);
    modifiableList.sort((a, b) {
      return b.id!.compareTo(a.id!);
    });
    final loadingStates = useState<Map<int, bool>>({});

    return Scaffold(
      appBar: const CustomAppBar(
        title: "paymenthistory",
        description: "",
      ),
      body: ResponsiveWidget(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: ListView.separated(
            separatorBuilder: (context, index) => const Gap(10),
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: GestureDetector(
                onTap: () => modifiableList[index].donation_status_id != 4 ? context.router.push(PaymentDetailRoute(history: modifiableList[index])) : null,
                child: Container(
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
                            layout: ResponsiveRowColumnType.COLUMN,
                            columnCrossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const ResponsiveRowColumnItem(child: Gap(10)),
                              ResponsiveRowColumnItem(
                                  child: Text(
                                "${locale == "en" ? modifiableList[index].type!.name : modifiableList[index].type!.name_ar}",
                                style: Theme.of(context).primaryTextTheme.bodyMedium!.copyWith(color: const Color(0xff16437B)),
                              )),
                              const ResponsiveRowColumnItem(child: Gap(10)),
                              ResponsiveRowColumnItem(
                                  child: Text(
                                "${modifiableList[index].total_amount} JD",
                                style: Theme.of(context).primaryTextTheme.bodyMedium!,
                              ))
                            ],
                          )),
                          ResponsiveRowColumnItem(
                              child: ResponsiveRowColumn(
                            layout: ResponsiveRowColumnType.ROW,
                            children: [
                              ResponsiveRowColumnItem(
                                child: Text(
                                  convertApiDate(modifiableList[index].created_at!),
                                  style: Theme.of(context).primaryTextTheme.bodyMedium,
                                ),
                              ),
                              const ResponsiveRowColumnItem(child: Gap(10)),
                              const ResponsiveRowColumnItem(
                                child: Icon(
                                  Icons.arrow_forward_ios,
                                  color: Color(0xff16437B),
                                ),
                              ),
                            ],
                          ))
                        ],
                      )),
                      const ResponsiveRowColumnItem(child: Gap(30)),
                      ResponsiveRowColumnItem(
                          child: AuthContainer(
                        onTap: () async {
                          if (modifiableList[index].donation_status_id != 4) {
                            loadingStates.value[index] = true;
                            loadingStates.value = Map.from(loadingStates.value);
                            ref.read(cancelDonationUseCaseProvider).execute(CancelDonationUseCaseInput(donationId: modifiableList[index].id.toString())).then((value) {
                              loadingStates.value[index] = false;
                              loadingStates.value = Map.from(loadingStates.value);
                              value.fold((l) => ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Check internet connection"))),
                                  (r) => context.router.maybePop().then((value) => ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Donation has been canceled")))));
                            });
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("This Donation is Cancelled")));
                          }
                        },
                        height: 40,
                        raduis: 10,
                        color: Colors.red,
                        child: loadingStates.value[index] ?? false
                            ? const CircularProgressIndicator(color: Colors.white)
                            : Text(
                                modifiableList[index].donation_status_id != 4 ? "Cancel Payment" : "This Donation is cancelled",
                                style: Theme.of(context).primaryTextTheme.titleSmall?.copyWith(color: Colors.white),
                              ),
                      )),
                      const ResponsiveRowColumnItem(child: Gap(30)),
                    ],
                  ),
                ),
              ),
            ),
            itemCount: modifiableList.length,
          ),
        ),
      ),
    );
  }
}
