import 'package:hive_flutter/hive_flutter.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'language.provider.g.dart';

@riverpod
class LanguageHiveNotifier extends _$LanguageHiveNotifier {
  @override
  String? build() =>
      Hive.box("lan").isNotEmpty ? Hive.box("lan").get("lan") : "en";
  void setLanguage(String language) async {
    var currentlanguage = getItemFromBox();
    currentlanguage = language;
    await addItemToBox(currentlanguage);
    state = getItemFromBox();
  }

  String? getLanguage() {
    final userSettings = getItemFromBox();
    if (userSettings == null) {
      return "en"; // Default to English if no settings or no language set.
    }
    return userSettings;
  }

  void addItem(String language) async {
    try {
      await addItemToBox(language);
      state = getItemFromBox();
    } catch (e) {
      // Handle the error, maybe log it or show a user-friendly message
    }
  }
}

String? getItemFromBox() {
  final String? setting =
      Hive.box("lan").isNotEmpty ? Hive.box('lan').get("lan") : "en";

  return setting;
}

Future<void> addItemToBox(String language) async {
  await Hive.box('lan').put("lan", language);
}
