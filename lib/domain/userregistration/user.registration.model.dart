import 'package:hive_flutter/hive_flutter.dart';

part 'user.registration.model.g.dart';

@HiveType(typeId: 1)
class UserRegistration {
  @HiveField(0)
  String? email;
  @HiveField(1)
  String? password;
  @HiveField(2)
  String? role;
  @HiveField(3)
  String? name;
  @HiveField(4)
  String? phone;
  @HiveField(5)
  String? nationalIdNumber;
  @HiveField(6)
  int? genderId;
  @HiveField(7)
  String? address;
  @HiveField(8)
  String? birthDate;
  @HiveField(9)
  String? cityId;
}
