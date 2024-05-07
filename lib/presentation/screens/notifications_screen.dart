import 'package:alaman/application/provider/language.provider.dart';
import 'package:alaman/application/provider/user.repository.provider.dart';
import 'package:alaman/constants.dart';
import 'package:alaman/domain/meetinghistory/model/meeting.history.model.dart';
import 'package:alaman/domain/notifications/model/notifications.model.dart';
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
class NotificationsHistoryScreen extends HookConsumerWidget {
  const NotificationsHistoryScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(languageHiveNotifierProvider);
    final history = ref.watch(getNotificationsHistoryProvider);
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(
          title: "notificationhistory",
          description: "",
        ),
        body: ResponsiveWidget(
          child: history.when(
              data: (data) => data.fold((l) => Text(l.message ?? "internetconnection").tr(), (r) {
                    List<NotificationsModel> modifiableList = List.from(r);
                    modifiableList.sort((a, b) {
                      return b.id!.compareTo(a.id!);
                    });
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: ListView.separated(
                        separatorBuilder: (context, index) => const Gap(10),
                        itemBuilder: (context, index) {
                          final model = r[index];
                          List<String> parts = model.related_data!.split(',');
                          String type = parts[0].split(':')[1].split('\\').last;
                          String id = parts[1].split(':')[1];
                          return ListTile(
                            onTap: () => context.router.push(pageCase(type: type, id: id)),
                            leading: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(shape: BoxShape.circle, image: DecorationImage(image: Image.asset("assets/Asset 6.png").image)),
                            ),
                            title: Text("${model.data2} ($type)"),
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
