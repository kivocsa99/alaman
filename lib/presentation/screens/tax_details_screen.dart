import 'package:alaman/application/provider/language.provider.dart';
import 'package:alaman/application/provider/user.repository.provider.dart';
import 'package:alaman/constants.dart';
import 'package:alaman/domain/taxexempetion/model/tax.model.dart';
import 'package:alaman/presentation/widgets/custom_appbar.dart';
import 'package:alaman/presentation/widgets/responsive_widget.dart';
import 'package:alaman/routes/app_route.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class TaxDetailScreen extends HookConsumerWidget {
  final TaxModel? history;
  final String? id;
  const TaxDetailScreen({
    super.key,
    this.history,
    this.id,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final taxById = ref.watch(getTaxesRequestProvider(id: id.toString()));
    final locale = ref.watch(languageHiveNotifierProvider.notifier).getLanguage();
    print(id);
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          title: "History",
          description: "taxdetails",
          routing: id != null ? () => context.router.replaceAll([MainRoute()]) : null,
        ),
        body: ResponsiveWidget(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Container(
              padding: const EdgeInsets.all(15),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: id == null
                  ? ResponsiveRowColumn(
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
                                  "${"taxyear".tr()} ${history?.year}",
                                  style: Theme.of(context).primaryTextTheme.bodyMedium!.copyWith(color: const Color(0xff16437B)),
                                )),
                                const ResponsiveRowColumnItem(child: Gap(10)),
                                ResponsiveRowColumnItem(
                                    child: Text(
                                  "${history?.notes}",
                                  style: Theme.of(context).primaryTextTheme.bodyMedium!,
                                )),
                                const ResponsiveRowColumnItem(child: Gap(10)),
                                ResponsiveRowColumnItem(
                                  child: Text(
                                    "Reaquested At : ${convertApiDate(history?.created_at!)}",
                                    style: Theme.of(context).primaryTextTheme.bodyMedium,
                                  ),
                                ),
                                const ResponsiveRowColumnItem(child: Gap(10)),
                                ResponsiveRowColumnItem(
                                  child: Text(
                                    "${"status".tr()} : ${locale == "en" ? history?.status!.name! : history?.status!.name_ar!}",
                                    style: Theme.of(context).primaryTextTheme.bodyMedium,
                                  ),
                                ),
                              ],
                            )),
                            if (history!.file != null)
                              ResponsiveRowColumnItem(
                                child: GestureDetector(
                                  onTap: () async {
                                    if (!await launchUrl(Uri.parse('$storageUrl/${history!.file}'))) {
                                      throw Exception('Could not launch');
                                    }
                                  },
                                  child: const Icon(
                                    Icons.file_copy,
                                    color: Color(0xff16437B),
                                  ),
                                ),
                              ),
                          ],
                        )),
                        const ResponsiveRowColumnItem(child: Gap(30)),
                      ],
                    )
                  : taxById.when(
                      data: (data) => data.fold((l) => Text(l.message ?? "internetconnection").tr(), (r) {
                            final TaxModel history = r;
                            return ResponsiveRowColumn(
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
                                          "${"taxyear".tr()} ${history.year}",
                                          style: Theme.of(context).primaryTextTheme.bodyMedium!.copyWith(color: const Color(0xff16437B)),
                                        )),
                                        const ResponsiveRowColumnItem(child: Gap(10)),
                                        ResponsiveRowColumnItem(
                                            child: Text(
                                          "${history.notes}",
                                          style: Theme.of(context).primaryTextTheme.bodyMedium!,
                                        )),
                                        const ResponsiveRowColumnItem(child: Gap(10)),
                                        ResponsiveRowColumnItem(
                                          child: Text(
                                            "Reaquested At : ${convertApiDate(history.created_at!)}",
                                            style: Theme.of(context).primaryTextTheme.bodyMedium,
                                          ),
                                        ),
                                        const ResponsiveRowColumnItem(child: Gap(10)),
                                        ResponsiveRowColumnItem(
                                          child: Text(
                                            "${"status".tr()} : ${locale == "en" ? history.status!.name! : history.status!.name_ar!}",
                                            style: Theme.of(context).primaryTextTheme.bodyMedium,
                                          ),
                                        ),
                                      ],
                                    )),
                                    if (history.file != null)
                                      ResponsiveRowColumnItem(
                                        child: GestureDetector(
                                          onTap: () async {
                                            if (!await launchUrl(Uri.parse('$storageUrl/${history.file}'))) {
                                              throw Exception('Could not launch');
                                            }
                                          },
                                          child: const Icon(
                                            Icons.file_copy,
                                            color: Color(0xff16437B),
                                          ),
                                        ),
                                      ),
                                  ],
                                )),
                                const ResponsiveRowColumnItem(child: Gap(30)),
                              ],
                            );
                          }),
                      error: (error, stackTrace) => Text(error.toString()),
                      loading: () => const CircularProgressIndicator()),
            ),
          ),
        ),
      ),
    );
  }
}
