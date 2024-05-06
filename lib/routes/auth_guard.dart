import 'package:alaman/domain/usersetting/model/user.setting.model.dart';
import 'package:auto_route/auto_route.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'app_route.dart';

class AuthGuard extends AutoRouteGuard {
  final Box settingBox = Hive.box('setting');
  AuthGuard();
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final UserSettings settings = settingBox.isNotEmpty ? settingBox.getAt(0) : UserSettings();
    if (settings.isLoggedIn == null || false) {
      resolver.next(true);
    } else {
      router.replaceAll([MainRoute()]);
    }
  }
}

class MainRouteGuard extends AutoRouteGuard {
  final Box settingBox = Hive.box('setting');

  MainRouteGuard();
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final UserSettings settings = settingBox.isNotEmpty ? settingBox.getAt(0) : UserSettings();
    if ((settings.isavatar == null || false) && settings.role == "Beneficiary") {
      router.replaceAll([const SetAvatarRoute()]);
    } else {
      resolver.next(true);
    }
  }
}
