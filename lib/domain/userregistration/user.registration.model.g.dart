// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.registration.model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserRegistrationAdapter extends TypeAdapter<UserRegistration> {
  @override
  final int typeId = 1;

  @override
  UserRegistration read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserRegistration()
      ..email = fields[0] as String?
      ..password = fields[1] as String?
      ..role = fields[2] as String?
      ..name = fields[3] as String?
      ..phone = fields[4] as String?
      ..nationalIdNumber = fields[5] as String?
      ..genderId = fields[6] as int?
      ..address = fields[7] as String?
      ..birthDate = fields[8] as String?
      ..cityId = fields[9] as String?;
  }

  @override
  void write(BinaryWriter writer, UserRegistration obj) {
    writer
      ..writeByte(10)
      ..writeByte(0)
      ..write(obj.email)
      ..writeByte(1)
      ..write(obj.password)
      ..writeByte(2)
      ..write(obj.role)
      ..writeByte(3)
      ..write(obj.name)
      ..writeByte(4)
      ..write(obj.phone)
      ..writeByte(5)
      ..write(obj.nationalIdNumber)
      ..writeByte(6)
      ..write(obj.genderId)
      ..writeByte(7)
      ..write(obj.address)
      ..writeByte(8)
      ..write(obj.birthDate)
      ..writeByte(9)
      ..write(obj.cityId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserRegistrationAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
