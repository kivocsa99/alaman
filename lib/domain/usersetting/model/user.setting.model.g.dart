// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.setting.model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserSettingsAdapter extends TypeAdapter<UserSettings> {
  @override
  final int typeId = 0;

  @override
  UserSettings read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserSettings()
      ..token = fields[0] as String?
      ..isDarkMode = fields[1] as bool?
      ..isFirstTime = fields[3] as bool?
      ..isLoggedIn = fields[4] as bool?
      ..role = fields[5] as String?
      ..id = fields[6] as int?;
  }

  @override
  void write(BinaryWriter writer, UserSettings obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.token)
      ..writeByte(1)
      ..write(obj.isDarkMode)
      ..writeByte(3)
      ..write(obj.isFirstTime)
      ..writeByte(4)
      ..write(obj.isLoggedIn)
      ..writeByte(5)
      ..write(obj.role)
      ..writeByte(6)
      ..write(obj.id);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserSettingsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
