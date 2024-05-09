import 'package:alaman/application/provider/language.provider.dart';
import 'package:alaman/application/provider/user.repository.provider.dart';
import 'package:alaman/constants.dart';
import 'package:alaman/presentation/widgets/custom_appbar.dart';
import 'package:alaman/presentation/widgets/responsive_widget.dart';
import 'package:alaman/presentation/widgets/shimmer_affect.dart';
import 'package:alaman/routes/app_route.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';

@RoutePage()
class AlamanServicesScreen extends HookConsumerWidget {
  final String? id;
  const AlamanServicesScreen({
    this.id,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(languageHiveNotifierProvider);
    final requests = ref.watch(getRequestsProvider(id: id));
    return SafeArea(
      child: Scaffold(
        appBar:  CustomAppBar(
          routing:()=> context.router.replaceAll([MainRoute()]),
          title: "services",
          description: "",
        ),
        body: ResponsiveWidget(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: requests.when(
                data: (data) => data.fold((l) => Text(l.toString()), (r) {
                      return r.isNotEmpty
                          ? ListView.builder(
                              itemCount: r.length,
                              itemBuilder: (context, index) => Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                  width: double.infinity,
                                  height: 130,
                                  padding: const EdgeInsets.all(20),
                                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
                                  child: ResponsiveRowColumn(
                                    layout: ResponsiveRowColumnType.COLUMN,
                                    columnCrossAxisAlignment: CrossAxisAlignment.start,
                                    columnMainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      ResponsiveRowColumnItem(
                                          child: ResponsiveRowColumn(
                                        layout: ResponsiveRowColumnType.ROW,
                                        rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          ResponsiveRowColumnItem(
                                              child: Text(
                                            locale == "en" ? r[index].type!.name! : r[index].type!.name_ar!,
                                            style: Theme.of(context).primaryTextTheme.bodyMedium?.copyWith(color: const Color(0xff16437B)),
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
                                        "${"notes".tr()} : ${r[index].notes ?? ""}",
                                        style: Theme.of(context).primaryTextTheme.titleSmall!.copyWith(fontWeight: FontWeight.w400),
                                      )),
                                      ResponsiveRowColumnItem(
                                          child: ResponsiveRowColumn(
                                        layout: ResponsiveRowColumnType.ROW,
                                        rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          ResponsiveRowColumnItem(child: Text("${"orderhistory".tr()} :${convertApiDate(r[index].created_at!)}")),
                                          ResponsiveRowColumnItem(
                                              child: Container(
                                            alignment: Alignment.center,
                                            height: 25,
                                            width: 70,
                                            decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(30)),
                                            child: Text(
                                              locale == "en" ? r[index].status!.name! : r[index].status!.name_ar!,
                                              style: const TextStyle(color: Colors.white),
                                            ),
                                          ))
                                        ],
                                      ))
                                    ],
                                  ),
                                ),
                              ),
                            )
                          : const Center(child: Text("you don't have any new Grants"));
                    }),
                error: (error, stacktrace) => Text(error.toString()),
                loading: () => Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
                      width: double.infinity,
                      height: 150,
                      child: ShimmerAffect(
                        decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(15)),
                      ),
                    )),
          ),
        ),
      ),
    );
  }
}
