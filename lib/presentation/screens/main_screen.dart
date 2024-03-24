import 'package:alaman/application/provider/hive.setting.provider.dart';
import 'package:alaman/domain/usersetting/model/user.setting.model.dart';
import 'package:alaman/routes/app_route.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class MainScreen extends HookConsumerWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userSetting = ref.watch(settingHiveNotifierProvider);

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

        return SafeArea(
          child: Scaffold(
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
                  ? const [
                      BottomNavigationBarItem(
                          label: 'Home',
                          icon: Icon(
                            Icons.home_outlined,
                          )),
                      BottomNavigationBarItem(
                          label: 'Grants', icon: Icon(Icons.diversity_1)),
                      BottomNavigationBarItem(
                          label: 'Profile', icon: Icon(FontAwesomeIcons.user)),
                    ]
                  : const [
                      BottomNavigationBarItem(
                          label: 'Home',
                          icon: Icon(
                            Icons.home_outlined,
                          )),
                      BottomNavigationBarItem(
                          label: 'Donate', icon: Icon(Icons.diversity_1)),
                      BottomNavigationBarItem(
                          label: 'Location',
                          icon: Icon(Icons.location_on_outlined)),
                      BottomNavigationBarItem(
                          label: 'Profile', icon: Icon(FontAwesomeIcons.user)),
                    ],
            ),
          ),
        );
      },
    );
  }
}
