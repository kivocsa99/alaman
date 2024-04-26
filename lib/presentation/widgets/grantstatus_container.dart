import 'package:alaman/application/provider/hive.setting.provider.dart';
import 'package:alaman/application/provider/language.provider.dart';
import 'package:alaman/application/provider/user.repository.provider.dart';
import 'package:alaman/constants.dart';
import 'package:alaman/domain/user/model/beneficiary/beneficiary.model.dart';
import 'package:alaman/presentation/widgets/shimmer_affect.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';

class GrantStatusContainer extends HookConsumerWidget {
  const GrantStatusContainer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
        final locale = ref.watch(languageHiveNotifierProvider);

    final profile = ref.watch(getProfileProvider);
    return profile.when(
        data: (data) => data.fold((l) => Text(l.toString()), (r) {
              final BeneficiaryModel beneficiaryModel = r;

              final date = beneficiaryModel.alaman_join_date != null
                  ? convertApiDate(beneficiaryModel.alaman_join_date!)
                  : "";
              return beneficiaryModel.scholarship_type != null
                  ? Container(
                      width: double.infinity,
                      height: 200,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: ResponsiveRowColumn(
                        layout: ResponsiveRowColumnType.COLUMN,
                        columnCrossAxisAlignment: CrossAxisAlignment.start,
                        columnMainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ResponsiveRowColumnItem(
                              child: ResponsiveRowColumn(
                            layout: ResponsiveRowColumnType.ROW,
                            rowMainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                            children: [
                              ResponsiveRowColumnItem(
                                  child: Text(
                                locale == "en"
                                    ? beneficiaryModel.name!
                                    : beneficiaryModel.name_ar!,
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .bodyMedium
                                    ?.copyWith(color: const Color(0xff16437B)),
                              )),
                              ResponsiveRowColumnItem(
                                  child: Container(
                                alignment: Alignment.center,
                                height: 20,
                                width: 60,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(30)),
                                child: Text(
                                  locale == "en"
                                      ? beneficiaryModel
                                          .scholarship_status!.name!
                                      : beneficiaryModel
                                          .scholarship_status!.name_ar!,
                                  style: const TextStyle(color: Colors.white),
                                ),
                              )),
                            ],
                          )),
                          ResponsiveRowColumnItem(
                              child: Text(
                            locale == "en"
                                ? beneficiaryModel.scholarship_type!.name!
                                : beneficiaryModel.scholarship_type!.name_ar!,
                            style: Theme.of(context)
                                .primaryTextTheme
                                .titleSmall!
                                .copyWith(fontWeight: FontWeight.w400),
                          )),
                          ResponsiveRowColumnItem(
                              child: Text("${"started".tr()} : $date")),
                          ResponsiveRowColumnItem(
                              child: Container(
                            height: 30,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: const Color(0xffFFC629),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Text(
                              "view",
                              style: TextStyle(color: Colors.white),
                            ).tr(),
                          )),
                        ],
                      ),
                    )
                  : Center(child: const Text("nogrants").tr());
            }),
        error: (error, stacktrace) => Text(error.toString()),
        loading: () => Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(15)),
              width: double.infinity,
              height: 150,
              child: ShimmerAffect(
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(15)),
              ),
            ));
  }
}
