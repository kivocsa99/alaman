// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'avatar.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AvatarModelImpl _$$AvatarModelImplFromJson(Map<String, dynamic> json) =>
    _$AvatarModelImpl(
      id: json['id'] as int?,
      filename: json['filename'] as String?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      deleted_at: json['deleted_at'] as String?,
    );

Map<String, dynamic> _$$AvatarModelImplToJson(_$AvatarModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'filename': instance.filename,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
    };
