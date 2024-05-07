// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifications.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NotificationsModelImpl _$$NotificationsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$NotificationsModelImpl(
      id: json['id'] as int?,
      user_id: json['user_id'] as int?,
      data: json['data'] as String?,
      data2: json['data2'] as String?,
      type: json['type'] as String?,
      StatusID: json['StatusID'] as String?,
      related_data: json['related_data'] as String?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      deleted_at: json['deleted_at'] as String?,
    );

Map<String, dynamic> _$$NotificationsModelImplToJson(
        _$NotificationsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.user_id,
      'data': instance.data,
      'data2': instance.data2,
      'type': instance.type,
      'StatusID': instance.StatusID,
      'related_data': instance.related_data,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
    };
