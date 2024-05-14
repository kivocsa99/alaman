import 'package:alaman/domain/userregistration/user.registration.model.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'hive.login.provider.g.dart';

@riverpod
class LoginHiveNotifier extends _$LoginHiveNotifier {
  @override
  UserRegistration? build() => Hive.box("login").isNotEmpty ? Hive.box("login").getAt(0) : UserRegistration();
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
  return Hive.box('login').getAt(0);
}

Future<void> addItemToBox(UserRegistration item) async {
  Hive.box('login').isNotEmpty ? await Hive.box('login').putAt(0, item) : await Hive.box('login').add(item);
}

Future<void> clearBox() async {
  await Hive.box('login').clear();
  await Hive.box('login').compact();
}
