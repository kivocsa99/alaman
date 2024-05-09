import 'dart:convert';

import 'package:alaman/application/provider/connection.provider.dart';
import 'package:alaman/application/provider/hive.setting.provider.dart';
import 'package:alaman/constants.dart';
import 'package:alaman/presentation/widgets/auth_container.dart';
import 'package:alaman/presentation/widgets/notifications_dialog.dart';
import 'package:alaman/routes/app_route.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final isOrderedProvider = StateProvider<bool>((ref) => false);

@RoutePage()
class MainScreen extends HookConsumerWidget {
  const MainScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isOrdered = ref.watch(isOrderedProvider);
    useEffect(() {
      FirebaseMessaging.instance.getInitialMessage().then((message) {
        if (message?.notification == null) {
          null;
        } else {
            print(message?.notification);

          Map<String, dynamic> parsedJson = jsonDecode(message?.data["Type"]);
          String type = parsedJson["related_data"]["Type"].toString().replaceAll("App\\Models\\", "");
          String id = parsedJson["related_data"]["ID"].toString();
          String status = parsedJson["related_data"]["StatusID"].toString();
          String notificationId = parsedJson["related_data"]["NotificationID"].toString();
          context.router.push(pageCase(type: type, id: id));
        }
      });
      FirebaseMessaging.onMessage.listen(
        ((message) async {
          if (message.notification == null) {
            null;
          } else {
            print(message.notification);
            Map<String, dynamic> parsedJson = jsonDecode(message.data["Type"]);
            String type = parsedJson["related_data"]["Type"].toString().replaceAll("App\\Models\\", "");
            String id = parsedJson["related_data"]["ID"].toString();
            String status = parsedJson["related_data"]["StatusID"].toString();
            String notificationId = parsedJson["related_data"]["NotificationID"].toString();
            return await showDialog(
                barrierDismissible: false,
                context: context,
                builder: (context) => NotificationDialog(
                      notificationType: type,
                      id: id,
                    ));
          }
        }),
      );
      FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) async {
        if (message.notification == null) {
          null;
        } else {
            print(message.notification);

          Map<String, dynamic> parsedJson = jsonDecode(message.data["Type"]);
          String type = parsedJson["related_data"]["Type"].toString().replaceAll("App\\Models\\", "");
          String id = parsedJson["related_data"]["ID"].toString();
          String status = parsedJson["related_data"]["StatusID"].toString();
          String notificationId = parsedJson["related_data"]["NotificationID"].toString();
          context.router.push(pageCase(type: type, id: id));
        }
      });
      return null;
    }, const []);
    useEffect(() {
      if (isOrdered == true) {
        // Show dialog if isOrdered is true
        WidgetsBinding.instance.addPostFrameCallback((_) {
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (context) => AlertDialog(
              title: SizedBox(
                height: 100,
                width: 100,
                child: SvgPicture.asset("assets/try1.svg"),
              ),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "donepayment",
                    style: Theme.of(context).primaryTextTheme.bodyMedium!.copyWith(color: const Color(0xff16437B)),
                  ).tr(),
                  AuthContainer(
                    raduis: 50,
                    height: 50,
                    onTap: () async {
                      ref.read(isOrderedProvider.notifier).state = false;
                      context.router.maybePop();
                    },
                    color: const Color(0xffFFC629),
                    child: Text(
                      "backhome",
                      style: Theme.of(context).primaryTextTheme.titleSmall?.copyWith(color: Colors.white),
                    ).tr(),
                  ),
                ],
              ),
            ),
          );
        });
      }
      return null; // Return a null cleanup function
    }, [isOrdered]);
    final userSetting = ref.watch(settingHiveNotifierProvider);
    final internet = ref.watch(internetConnectionProvider);
    print(userSetting?.role);
    return AutoTabsRouter(
      routes: userSetting?.role == "Beneficiary"
          ? const [
              HomeRoute(),
              GrantsRoute(),
              ProfileRoute(),
            ]
          : const [
              HomeRoute(),
              GrantsRoute(),
              LocationRoute(),
              ProfileRoute(),
            ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          extendBody: true,
          resizeToAvoidBottomInset: false,
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            showUnselectedLabels: true,
            currentIndex: tabsRouter.activeIndex,
            unselectedFontSize: 12,
            selectedFontSize: 12,
            onTap: tabsRouter.setActiveIndex,
            items: userSetting?.role == "Beneficiary"
                ? [
                    BottomNavigationBarItem(
                        label: 'home'.tr(),
                        icon: const Icon(
                          Icons.home_outlined,
                        )),
                    BottomNavigationBarItem(label: 'grants'.tr(), icon: const Icon(Icons.diversity_1)),
                    BottomNavigationBarItem(label: 'profile'.tr(), icon: const Icon(FontAwesomeIcons.user)),
                  ]
                : [
                    BottomNavigationBarItem(
                        label: 'home'.tr(),
                        icon: const Icon(
                          Icons.home_outlined,
                        )),
                    BottomNavigationBarItem(label: 'donate'.tr(), icon: const Icon(Icons.diversity_1)),
                    BottomNavigationBarItem(label: 'location'.tr(), icon: const Icon(Icons.location_on_outlined)),
                    BottomNavigationBarItem(label: 'profile'.tr(), icon: const Icon(FontAwesomeIcons.user)),
                  ],
          ),
        );
      },
    );
  }
}
