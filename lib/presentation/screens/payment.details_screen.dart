import 'package:alaman/constants.dart';
import 'package:alaman/domain/donordonation/model/donor.donation.model.dart';
import 'package:alaman/domain/paymentmodel/model/payment.model.dart';
import 'package:alaman/presentation/widgets/custom_appbar.dart';
import 'package:alaman/presentation/widgets/responsive_widget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';

@RoutePage()
class PaymentDetailScreen extends HookConsumerWidget {
  final DonorDonation history;
  const PaymentDetailScreen({
    super.key,
    required this.history,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final PaymentHistory = useState<DonorDonation>(history);

    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(
          title: "History",
          description: "Payment Details",
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
                                "${history.type!.name}",
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .bodyMedium!
                                    .copyWith(color: const Color(0xff16437B)),
                              )),
                              const ResponsiveRowColumnItem(child: Gap(10)),
                              ResponsiveRowColumnItem(
                                  child: Text(
                                "Total amount : ${history.total_amount} JD",
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .bodyMedium!,
                              ))
                            ],
                          )),
                          ResponsiveRowColumnItem(
                            child: Text(
                              convertApiDate(history.created_at!),
                              style:
                                  Theme.of(context).primaryTextTheme.bodyMedium,
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
                        final PaymentModel model =
                            PaymentHistory.value.payments![index];
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
                                rowMainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ResponsiveRowColumnItem(
                                      child: ResponsiveRowColumn(
                                    layout: ResponsiveRowColumnType.COLUMN,
                                    columnCrossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const ResponsiveRowColumnItem(
                                          child: Gap(10)),
                                      ResponsiveRowColumnItem(
                                          child: Text(
                                        "Payment #${PaymentHistory.value.payments![index].id}",
                                        style: Theme.of(context)
                                            .primaryTextTheme
                                            .bodyMedium!
                                            .copyWith(
                                                color: const Color(0xff16437B)),
                                      )),
                                      const ResponsiveRowColumnItem(
                                          child: Gap(10)),
                                      ResponsiveRowColumnItem(
                                          child: Text(
                                        "Payment amount : ${PaymentHistory.value.payments![index].amount} JD",
                                        style: Theme.of(context)
                                            .primaryTextTheme
                                            .bodyMedium!,
                                      ))
                                    ],
                                  )),
                                  ResponsiveRowColumnItem(
                                    child: Text(
                                      convertApiDate(
                                          PaymentHistory.value.created_at!),
                                      style: Theme.of(context)
                                          .primaryTextTheme
                                          .bodyMedium,
                                    ),
                                  ),
                                ],
                              )),
                              const ResponsiveRowColumnItem(child: Gap(30)),
                              ResponsiveRowColumnItem(
                                  child: ResponsiveRowColumn(
                                layout: ResponsiveRowColumnType.ROW,
                                rowMainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ResponsiveRowColumnItem(
                                      child: Text(
                                    "Status : ${model.status!.name}",
                                    style: Theme.of(context)
                                        .primaryTextTheme
                                        .bodyMedium!
                                        .copyWith(
                                            color: const Color(0xff16437B)),
                                  )),
                                  ResponsiveRowColumnItem(
                                      child: model.status!.id == 1
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
                                "Provider refrence : ${PaymentHistory.value.payments![index].provider_ref}",
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .bodyMedium!
                                    .copyWith(color: const Color(0xff16437B)),
                              ))
                            ],
                          ),
                        );
                      },
                      itemCount: PaymentHistory.value.payments!.length,
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
