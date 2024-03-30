import 'package:alaman/application/provider/language.provider.dart';
import 'package:alaman/constants.dart';
import 'package:alaman/domain/donordonation/model/donor.donation.model.dart';
import 'package:alaman/presentation/widgets/custom_appbar.dart';
import 'package:alaman/presentation/widgets/responsive_widget.dart';
import 'package:alaman/routes/app_route.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
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
    final locale =
        ref.watch(languageHiveNotifierProvider.notifier).getLanguage();
    List<DonorDonation> modifiableList = List.from(donationHistory);
    modifiableList.sort((a, b) {
      return b.id!.compareTo(a.id!);
    });
    return SafeArea(
      child: Scaffold(
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
                  onTap: () => context.router
                      .push(PaymentDetailRoute(history: modifiableList[index])),
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
                              columnCrossAxisAlignment:
                                  CrossAxisAlignment.start,
                              children: [
                                const ResponsiveRowColumnItem(child: Gap(10)),
                                ResponsiveRowColumnItem(
                                    child: Text(
                                  "${locale == "en" ? modifiableList[index].type!.name : modifiableList[index].type!.name_ar}",
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .bodyMedium!
                                      .copyWith(color: const Color(0xff16437B)),
                                )),
                                const ResponsiveRowColumnItem(child: Gap(10)),
                                ResponsiveRowColumnItem(
                                    child: Text(
                                  "${modifiableList[index].total_amount} JD",
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .bodyMedium!,
                                ))
                              ],
                            )),
                            ResponsiveRowColumnItem(
                                child: ResponsiveRowColumn(
                              layout: ResponsiveRowColumnType.ROW,
                              children: [
                                ResponsiveRowColumnItem(
                                  child: Text(
                                    convertApiDate(
                                        modifiableList[index].created_at!),
                                    style: Theme.of(context)
                                        .primaryTextTheme
                                        .bodyMedium,
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
                      ],
                    ),
                  ),
                ),
              ),
              itemCount: modifiableList.length,
            ),
          ),
        ),
      ),
    );
  }
}
