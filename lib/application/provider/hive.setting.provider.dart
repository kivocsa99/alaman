import 'package:alaman/domain/usersetting/model/user.setting.model.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'hive.setting.provider.g.dart';

@riverpod
class SettingHiveNotifier extends _$SettingHiveNotifier {
  @override
  UserSettings? build() =>
      Hive.box("setting").isNotEmpty ? Hive.box("setting").getAt(0) : null;
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
  return Hive.box('setting').getAt(0);
}

Future<void> addItemToBox(UserSettings item) async {
  Hive.box('setting').isNotEmpty
      ? await Hive.box('setting').putAt(0, item)
      : await Hive.box('setting').add(item);
}

Future<void> clearBox() async {
  await Hive.box('setting').clear();
}
