import 'package:alaman/domain/usersetting/model/user.setting.model.dart';
import 'package:auto_route/auto_route.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'app_route.dart';

class AuthGuard extends AutoRouteGuard {
  final Box settingBox = Hive.box('setting');
  AuthGuard();
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final UserSettings settings =
        settingBox.isNotEmpty ? settingBox.getAt(0) : UserSettings();
    print(settings.isLoggedIn);
    if (settings.isLoggedIn == null || false) {
      resolver.next(true);
    } else {
      router.replaceAll([const MainRoute()]);
    }
  }
}

class OnBoardingGuard extends AutoRouteGuard {
  OnBoardingGuard();
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final Box settingBox = Hive.box('setting');

    if ((settingBox.isNotEmpty)) {
      resolver.next(true);
    } else {
      router.replaceAll([const OnBoardingRoute()]);
    }
  }
}
