import 'package:alaman/application/provider/user.repository.provider.dart';
import 'package:alaman/constants.dart';
import 'package:alaman/domain/user/model/beneficiary/beneficiary.model.dart';
import 'package:alaman/presentation/widgets/custom_appbar.dart';
import 'package:alaman/presentation/widgets/impact_container.dart';
import 'package:alaman/presentation/widgets/responsive_widget.dart';
import 'package:alaman/presentation/widgets/shimmer_affect.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';

@RoutePage()
class YourGrantsScreen extends HookConsumerWidget {
  const YourGrantsScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profile = ref.watch(getProfileProvider);
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(
          title: "View",
          description: "View your Grants",
        ),
        body: ResponsiveWidget(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: profile.when(
                data: (data) => data.fold((l) => Text(l.toString()), (r) {
                      final BeneficiaryModel beneficiaryModel = r;

                      final date = beneficiaryModel.alaman_join_date != null
                          ? convertApiDate(beneficiaryModel.alaman_join_date!)
                          : "";
                      return beneficiaryModel.scholarship_type != null
                          ? Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                width: double.infinity,
                                height: 130,
                                padding: const EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15)),
                                child: ResponsiveRowColumn(
                                  layout: ResponsiveRowColumnType.COLUMN,
                                  columnCrossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  columnMainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    ResponsiveRowColumnItem(
                                        child: ResponsiveRowColumn(
                                      layout: ResponsiveRowColumnType.ROW,
                                      rowMainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ResponsiveRowColumnItem(
                                            child: Text(
                                          beneficiaryModel.name!,
                                          style: Theme.of(context)
                                              .primaryTextTheme
                                              .bodyMedium
                                              ?.copyWith(
                                                  color:
                                                      const Color(0xff16437B)),
                                        )),
                                        const ResponsiveRowColumnItem(
                                          child: Icon(
                                            Icons.arrow_forward_ios,
                                            color: Color(0xff16437B),
                                          ),
                                        )
                                      ],
                                    )),
                                    ResponsiveRowColumnItem(
                                        child: Text(
                                      beneficiaryModel.scholarship_type!.name!,
                                      style: Theme.of(context)
                                          .primaryTextTheme
                                          .titleSmall!
                                          .copyWith(
                                              fontWeight: FontWeight.w400),
                                    )),
                                    ResponsiveRowColumnItem(
                                        child: ResponsiveRowColumn(
                                      layout: ResponsiveRowColumnType.ROW,
                                      rowMainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ResponsiveRowColumnItem(
                                            child: Text("Started : $date")),
                                        ResponsiveRowColumnItem(
                                            child: Container(
                                          alignment: Alignment.center,
                                          height: 20,
                                          width: 60,
                                          decoration: BoxDecoration(
                                              color: Colors.green,
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                          child: Text(
                                            beneficiaryModel
                                                .scholarship_status!.name!,
                                            style: const TextStyle(
                                                color: Colors.white),
                                          ),
                                        ))
                                      ],
                                    ))
                                  ],
                                ),
                              ),
                            )
                          : const Center(
                              child: Text("you don't have any new Grants"));
                    }),
                error: (error, stacktrace) => Text(error.toString()),
                loading: () => Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15)),
                      width: double.infinity,
                      height: 150,
                      child: ShimmerAffect(
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(15)),
                      ),
                    )),
          ),
        ),
      ),
    );
  }
}
