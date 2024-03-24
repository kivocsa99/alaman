// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scholarshiptypes.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ScholarshipTypesModelImpl _$$ScholarshipTypesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ScholarshipTypesModelImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      name_ar: json['name_ar'] as String?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      deleted_at: json['deleted_at'] as String?,
      steps: (json['steps'] as List<dynamic>?)
          ?.map((e) => StepsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ScholarshipTypesModelImplToJson(
        _$ScholarshipTypesModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'name_ar': instance.name_ar,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
      'steps': instance.steps,
    };

_$StepsModelImpl _$$StepsModelImplFromJson(Map<String, dynamic> json) =>
    _$StepsModelImpl(
      id: json['id'] as int?,
      scholarship_type_id: json['scholarship_type_id'] as int?,
      sort: json['sort'] as int?,
      name: json['name'] as String?,
      name_ar: json['name_ar'] as String?,
      amount: json['amount'] as int?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      deleted_at: json['deleted_at'] as String?,
    );

Map<String, dynamic> _$$StepsModelImplToJson(_$StepsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'scholarship_type_id': instance.scholarship_type_id,
      'sort': instance.sort,
      'name': instance.name,
      'name_ar': instance.name_ar,
      'amount': instance.amount,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
    };
