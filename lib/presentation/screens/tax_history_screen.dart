import 'package:alaman/application/provider/language.provider.dart';
import 'package:alaman/application/provider/user.repository.provider.dart';
import 'package:alaman/constants.dart';
import 'package:alaman/domain/taxexempetion/model/tax.model.dart';
import 'package:alaman/presentation/widgets/add_tax_bottom_sheet.dart';
import 'package:alaman/presentation/widgets/add_tax_bottom_sheet.dart';
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
class TaxHistoryScreen extends HookConsumerWidget {
  const TaxHistoryScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(languageHiveNotifierProvider);
    final history = ref.watch(getTaxesRequestProvider(id: null));
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          showModalBottomSheet(
            context: context,
            backgroundColor: Colors.white,
            showDragHandle: true,
            isScrollControlled: true,
            barrierColor: Colors.grey.withOpacity(0.7),
            builder: (BuildContext context) {
              return const TaxBottomSheet();
            },
          );
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      appBar: const CustomAppBar(
        title: "taxhistory",
        description: "",
      ),
      body: history.when(
          data: (data) => data.fold((l) => null, (r) {
                final List<TaxModel> modifiableList = r;
                return ResponsiveWidget(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: ListView.separated(
                      separatorBuilder: (context, index) => const Gap(10),
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: GestureDetector(
                          onTap: () => context.router.push(TaxDetailRoute(history: modifiableList[index])),
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
                                          "${"taxyear".tr()} : ${modifiableList[index].year}",
                                          style: Theme.of(context).primaryTextTheme.bodyMedium!.copyWith(color: const Color(0xff16437B)),
                                        )),
                                        const ResponsiveRowColumnItem(child: Gap(10)),
                                        ResponsiveRowColumnItem(
                                            child: Text(
                                          "${"notes".tr()} : ${modifiableList[index].notes}",
                                          style: Theme.of(context).primaryTextTheme.bodyMedium!,
                                        )),
                                        const ResponsiveRowColumnItem(child: Gap(10)),
                                        ResponsiveRowColumnItem(
                                          child: Text(
                                            "Reaquested At : ${convertApiDate(modifiableList[index].created_at!)}",
                                            style: Theme.of(context).primaryTextTheme.bodyMedium,
                                          ),
                                        ),
                                      ],
                                    )),
                                    const ResponsiveRowColumnItem(
                                      child: Icon(
                                        Icons.arrow_forward_ios,
                                        color: Color(0xff16437B),
                                      ),
                                    ),
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
                );
              }),
          error: (error, stackTrace) => Text(stackTrace.toString()),
          loading: () => const CircularProgressIndicator()),
    );
  }
}
