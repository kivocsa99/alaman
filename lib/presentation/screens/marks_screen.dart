import 'package:alaman/application/provider/language.provider.dart';
import 'package:alaman/constants.dart';
import 'package:alaman/domain/marks/model/marks.model.dart';
import 'package:alaman/presentation/widgets/custom_appbar.dart';
import 'package:alaman/presentation/widgets/responsive_widget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class MarksHistoryScreen extends HookConsumerWidget {
  final List<MarksModel> marks;
  const MarksHistoryScreen({
    super.key,
    required this.marks,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale =
        ref.watch(languageHiveNotifierProvider.notifier).getLanguage();
    List<MarksModel> modifiableList = List.from(marks);
    modifiableList.sort((a, b) {
      return b.id!.compareTo(a.id!);
    });
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(
          title: "Marks History",
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
                  onTap: () async {
                    if (!await launchUrl(
                        Uri.parse('$storageUrl/${marks[index].file}'))) {
                      throw Exception('Could not launch ');
                    }
                  },
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
                                  "${locale == "en" ? modifiableList[index].academic_year : modifiableList[index].academic_year!}",
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .bodyMedium!
                                      .copyWith(color: const Color(0xff16437B)),
                                )),
                                const ResponsiveRowColumnItem(child: Gap(10)),
                                ResponsiveRowColumnItem(
                                    child: Text(
                                  " JD",
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
                                    modifiableList[index]
                                        .semester_average!
                                        .toString(),
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
