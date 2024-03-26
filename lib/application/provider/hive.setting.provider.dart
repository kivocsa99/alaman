import 'package:alaman/domain/usersetting/model/user.setting.model.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'hive.setting.provider.g.dart';

@riverpod
class SettingHiveNotifier extends _$SettingHiveNotifier {
  @override
  UserSettings? build() => Hive.box("setting").isNotEmpty
      ? Hive.box("setting").getAt(0)
      : UserSettings();
  void setLanguage(String language) async {
    var currentRegistration = getItemFromBox();
    currentRegistration!.language = language;
    await addItemToBox(currentRegistration);
    state = getItemFromBox();
  }

  String? getLanguage() {
    final userSettings = getItemFromBox();
    if (userSettings == null || userSettings.language == null) {
      return "en"; // Default to English if no settings or no language set.
    }
    return userSettings.language ?? "en";
  }

  void addItem(UserSettings setting) async {
    try {
      await addItemToBox(setting);
      state = getItemFromBox();
    } catch (e) {
      // Handle the error, maybe log it or show a user-friendly message
      print('Error adding item to box: $e');
    }
  }

  Future<void> deleteAll() async {
    await clearBox();
    state = null;
  }
}

UserSettings? getItemFromBox() {
  final UserSettings? setting = Hive.box("setting").isNotEmpty
      ? Hive.box('setting').getAt(0)
      : UserSettings();

  return setting;
}

Future<void> addItemToBox(UserSettings item) async {
  Hive.box('setting').isNotEmpty
      ? await Hive.box('setting').putAt(0, item)
      : await Hive.box('setting').add(item);
}

Future<void> clearBox() async {
  await Hive.box('setting').clear();
}
