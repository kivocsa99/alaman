import 'package:alaman/domain/userregistration/user.registration.model.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'hive.register.provider.g.dart';

@riverpod
class RegisterHiveNotifier extends _$RegisterHiveNotifier {
  @override
  UserRegistration? build() => Hive.box("register").isNotEmpty
      ? Hive.box("register").getAt(0)
      : UserRegistration();
  void addItem(UserRegistration registration) async {
    await addItemToBox(registration);
    state = getItemFromBox();
  }

  Future<void> deleteAll() async {
    await clearBox();
    state = null;
  }
}

UserRegistration? getItemFromBox() {
  return Hive.box('register').getAt(0);
}

Future<void> addItemToBox(UserRegistration item) async {
  Hive.box('register').isNotEmpty
      ? await Hive.box('register').putAt(0, item)
      : await Hive.box('register').add(item);
}

Future<void> clearBox() async {
  await Hive.box('register').clear();
}
