import 'package:alaman/domain/donordonation/model/donor.donation.model.dart';
import 'package:alaman/presentation/widgets/custom_appbar.dart';
import 'package:alaman/presentation/widgets/responsive_widget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
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
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(
          title: "History",
          description: "",
        ),
        body: ResponsiveWidget(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: ListView.separated(
              separatorBuilder: (context, index) => const Gap(10),
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
                            layout: ResponsiveRowColumnType.ROW,
                            children: [
                              const ResponsiveRowColumnItem(child: Gap(10)),
                              ResponsiveRowColumnItem(
                                  child: Text(
                                "${donationHistory[index]}",
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .bodyMedium!
                                    .copyWith(color: const Color(0xff16437B)),
                              )),
                            ],
                          )),
                          const ResponsiveRowColumnItem(
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Color(0xff16437B),
                            ),
                          )
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
                            "Started: what date ? ",
                            style: Theme.of(context)
                                .primaryTextTheme
                                .bodyMedium!
                                .copyWith(fontSize: 12),
                          )),
                          ResponsiveRowColumnItem(
                              child: Text(
                            "Target:  JD",
                            style: Theme.of(context)
                                .primaryTextTheme
                                .bodyMedium!
                                .copyWith(fontSize: 12),
                          ))
                        ],
                      )),
                    ],
                  ),
                ),
              ),
              itemCount: donationHistory.length,
            ),
          ),
        ),
      ),
    );
  }
}
