import 'package:hive_flutter/hive_flutter.dart';
part 'user.setting.model.g.dart';

@HiveType(typeId: 0)
class UserSettings {
  @HiveField(0)
  String? token;
  @HiveField(1)
  bool? isDarkMode;
  @HiveField(3)
  bool? isFirstTime;
  @HiveField(4)
  bool? isLoggedIn;
  @HiveField(5)
  String? role;
  @HiveField(6)
  int? id;
  @HiveField(7)
  bool? isavatar;
  @HiveField(8)
  String? language;
}
