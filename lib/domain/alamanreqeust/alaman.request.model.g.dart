// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alaman.request.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AlamanRequestModelImpl _$$AlamanRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AlamanRequestModelImpl(
      id: json['id'] as int?,
      beneficiary_id: json['beneficiary_id'] as int?,
      alaman_service_id: json['alaman_service_id'] as int?,
      alaman_request_status_id: json['alaman_request_status_id'] as int?,
      notes: json['notes'] as String?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      deleted_at: json['deleted_at'] as String?,
      status: json['status'] == null
          ? null
          : StatusModel.fromJson(json['status'] as Map<String, dynamic>),
      type: json['type'] == null
          ? null
          : TypeModel.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AlamanRequestModelImplToJson(
        _$AlamanRequestModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'beneficiary_id': instance.beneficiary_id,
      'alaman_service_id': instance.alaman_service_id,
      'alaman_request_status_id': instance.alaman_request_status_id,
      'notes': instance.notes,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
      'status': instance.status,
      'type': instance.type,
    };

_$TypeModelImpl _$$TypeModelImplFromJson(Map<String, dynamic> json) =>
    _$TypeModelImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      name_ar: json['name_ar'] as String?,
      active: json['active'] as int?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      deleted_at: json['deleted_at'] as String?,
      status: json['status'] == null
          ? null
          : StatusModel.fromJson(json['status'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TypeModelImplToJson(_$TypeModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'name_ar': instance.name_ar,
      'active': instance.active,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
      'status': instance.status,
    };
