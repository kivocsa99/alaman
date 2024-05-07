import 'package:alaman/application/provider/language.provider.dart';
import 'package:alaman/application/provider/user.repository.provider.dart';
import 'package:alaman/constants.dart';
import 'package:alaman/domain/meetinghistory/model/meeting.history.model.dart';
import 'package:alaman/presentation/widgets/custom_appbar.dart';
import 'package:alaman/presentation/widgets/responsive_widget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class MeetingHistoryScreen extends HookConsumerWidget {
  const MeetingHistoryScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(languageHiveNotifierProvider);
    final history = ref.watch(getMeetingHistoryProvider);
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(
          title: "Meeting History",
          description: "",
        ),
        body: ResponsiveWidget(
          child: history.when(
              data: (data) => data.fold(
                      (l) => Text(l.message ?? "internetconnection").tr(), (r) {
                    List<MeetingHistoryModel> modifiableList = List.from(r);
                    modifiableList.sort((a, b) {
                      return b.id!.compareTo(a.id!);
                    });
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: ListView.separated(
                        separatorBuilder: (context, index) => const Gap(10),
                        itemBuilder: (context, index) {
                          final model = r![index].beneficiary!;
                          return   Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: GestureDetector(
                            onTap: () async {
                           if (!await launchUrl(Uri.parse(
                                                "${r[index].link}"))) {
                                              throw Exception(
                                                  'Could not launch ');
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
                                  rowMainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ResponsiveRowColumnItem(
                                        child: ResponsiveRowColumn(
                                      layout: ResponsiveRowColumnType.ROW,
                                      children: [
                                        ResponsiveRowColumnItem(
                                          child: Container(
                                            width: 40,
                                            height: 40,
                                            alignment: Alignment.center,
                                            decoration: const BoxDecoration(
                                              color: Color(0xffffc629),
                                              shape: BoxShape.circle,
                                            ),
                                            child: model.image != null
                                                ? CachedNetworkImage(
                                                    imageUrl:
                                                        "$storageUrl/${model.image}",
                                                    placeholder: (context,
                                                            url) =>
                                                        const Center(
                                                            child:
                                                                CircularProgressIndicator()),
                                                    errorWidget: (context, url,
                                                            error) =>
                                                        const Icon(Icons.error),
                                                    imageBuilder: (context,
                                                        imageProvider) {
                                                      return ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(15),
                                                        child: Image(
                                                          image: imageProvider,
                                                          fit: BoxFit.fill,
                                                          width:
                                                              double.infinity,
                                                          height:
                                                              double.infinity,
                                                        ),
                                                      );
                                                    },
                                                  )
                                                : const Icon(
                                                    Icons.person,
                                                    color: Colors.white,
                                                  ),
                                          ),
                                        ),
                                        const ResponsiveRowColumnItem(
                                            child: Gap(10)),
                                        ResponsiveRowColumnItem(
                                            child: ResponsiveRowColumn(
                                          layout:
                                              ResponsiveRowColumnType.COLUMN,
                                          columnCrossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            ResponsiveRowColumnItem(
                                                child: Text(
                                              locale == "en"
                                                  ? model.name!
                                                  : model.name_ar!,
                                              style: Theme.of(context)
                                                  .primaryTextTheme
                                                  .bodyMedium!
                                                  .copyWith(
                                                      color: const Color(
                                                          0xff16437B)),
                                            )),
                                            ResponsiveRowColumnItem(
                                                child: Text(
                                              locale == "en"
                                                  ? r[index]
                                                      .status!.name!
                                                  :  r[index]
                                                      .status!
                                                      .name_ar!,
                                              style: Theme.of(context)
                                                  .primaryTextTheme
                                                  .bodyMedium!
                                                  .copyWith(fontSize: 12),
                                            )),
                                             ResponsiveRowColumnItem(
                                                child: Text(
                                            
                                              "${"date".tr()}: ${r[index].date}",
                                              style: Theme.of(context)
                                                  .primaryTextTheme
                                                  .bodyMedium!
                                                  .copyWith(fontSize: 12),
                                            )),
                                             ResponsiveRowColumnItem(
                                                child: Text(
                                            "${"time".tr()}: ${r[index].time}" ,
                                              style: Theme.of(context)
                                                  .primaryTextTheme
                                                  .bodyMedium!
                                                  .copyWith(fontSize: 12),
                                            )),
                                           
                                          ],
                                        )),
                                      ],
                                    )),
                                  ],
                                )),
                                const ResponsiveRowColumnItem(child: Gap(30)),
                               
                              ],
                            ),
                          )
                          ),
                        );
                     
                        }, 
                          itemCount: modifiableList.length,
                      ),
                    );
                  }),
              error: (error, stackTrace) {
                return Text(error.toString());
              },
              loading: () => const CircularProgressIndicator()),
        ),
      ),
    );
  }
}
