import 'package:alaman/application/provider/language.provider.dart';
import 'package:alaman/constants.dart';
import 'package:alaman/domain/donordonation/model/donor.donation.model.dart';
import 'package:alaman/domain/paymentmodel/model/payment.model.dart';
import 'package:alaman/presentation/widgets/custom_appbar.dart';
import 'package:alaman/presentation/widgets/responsive_widget.dart';
import 'package:alaman/routes/app_route.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';

@RoutePage()
class PaymentDetailScreen extends HookConsumerWidget {
  final DonorDonation? history;
  final int? id;
  const PaymentDetailScreen({super.key, this.history, this.id});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final paymentHistory = useState<DonorDonation?>(history);

    final locale = ref.watch(languageHiveNotifierProvider.notifier).getLanguage();

    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          title: "History",
          description: "Payment Details",
          routing: id != null ? () => context.router.replaceAll([MainRoute()]) : null,
        ),
        body: ResponsiveWidget(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: ResponsiveRowColumn(
              layout: ResponsiveRowColumnType.COLUMN,
              children: [
                ResponsiveRowColumnItem(
                    child: Container(
                  padding: const EdgeInsets.all(15),
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: ResponsiveRowColumn(
                    layout: ResponsiveRowColumnType.COLUMN,
                    columnMainAxisAlignment: MainAxisAlignment.start,
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
                                locale == "en" ? history!.type!.name! : history!.type!.name_ar!,
                                style: Theme.of(context).primaryTextTheme.bodyMedium!.copyWith(color: const Color(0xff16437B)),
                              )),
                              const ResponsiveRowColumnItem(child: Gap(10)),
                              ResponsiveRowColumnItem(
                                  child: Text(
                                "Total amount : ${history!.total_amount} JD",
                                style: Theme.of(context).primaryTextTheme.bodyMedium!,
                              )),
                                ResponsiveRowColumnItem(
                                  child: Text(
                                "${"notes".tr()} : ${paymentHistory.value!.notes}",
                                style: Theme.of(context).primaryTextTheme.bodyMedium!.copyWith(color: const Color(0xff16437B)),
                              ))
                            ],
                          )),
                          ResponsiveRowColumnItem(
                            child: Text(
                              convertApiDate(history!.created_at!),
                              style: Theme.of(context).primaryTextTheme.bodyMedium,
                            ),
                          ),
                        ],
                      )),
                      const ResponsiveRowColumnItem(child: Gap(30)),
                    ],
                  ),
                )),
                ResponsiveRowColumnItem(
                    child: Divider(
                  thickness: 1,
                )),
                ResponsiveRowColumnItem(
                    columnFit: FlexFit.loose,
                    child: ListView.separated(
                      separatorBuilder: (context, index) => Divider(
                        thickness: 1,
                      ),
                      itemBuilder: (context, index) {
                        final PaymentModel model = paymentHistory.value!.payments![index];
                        return Container(
                          padding: const EdgeInsets.all(15),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),
                          child: ResponsiveRowColumn(
                            layout: ResponsiveRowColumnType.COLUMN,
                            columnCrossAxisAlignment: CrossAxisAlignment.start,
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
                                        "Payment #${paymentHistory.value!.payments![index].id}",
                                        style: Theme.of(context).primaryTextTheme.bodyMedium!.copyWith(color: const Color(0xff16437B)),
                                      )),
                                      const ResponsiveRowColumnItem(child: Gap(10)),
                                      ResponsiveRowColumnItem(
                                          child: Text(
                                        "Payment amount : ${paymentHistory.value!.payments![index].amount} JD",
                                        style: Theme.of(context).primaryTextTheme.bodyMedium!,
                                      ))
                                    ],
                                  )),
                                  ResponsiveRowColumnItem(
                                    child: Text(
                                      convertApiDate(paymentHistory.value!.payments![index].due_date!),
                                      style: Theme.of(context).primaryTextTheme.bodyMedium,
                                    ),
                                  ),
                                ],
                              )),
                              const ResponsiveRowColumnItem(child: Gap(30)),
                              ResponsiveRowColumnItem(
                                  child: ResponsiveRowColumn(
                                layout: ResponsiveRowColumnType.ROW,
                                rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  ResponsiveRowColumnItem(
                                      child: Text(
                                    "Status : ${locale == "en" ? model.status!.name : model.status!.name_ar}",
                                    style: Theme.of(context).primaryTextTheme.bodyMedium!.copyWith(color: const Color(0xff16437B)),
                                  )),
                                  ResponsiveRowColumnItem(
                                      child: model.is_success == 1
                                          ? const Icon(
                                              Icons.done,
                                              color: Colors.green,
                                            )
                                          : const Icon(
                                              Icons.close,
                                              color: Colors.red,
                                            ))
                                ],
                              )),
                              ResponsiveRowColumnItem(
                                  child: Text(
                                "Provider refrence : ${paymentHistory.value!.payments![index].provider_ref}",
                                style: Theme.of(context).primaryTextTheme.bodyMedium!.copyWith(color: const Color(0xff16437B)),
                              )),
                            
                            ],
                          ),
                        );
                      },
                      itemCount: paymentHistory.value!.payments!.length,
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
