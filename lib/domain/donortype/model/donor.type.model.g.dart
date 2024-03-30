// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'donor.type.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DonorTypeModelImpl _$$DonorTypeModelImplFromJson(Map<String, dynamic> json) =>
    _$DonorTypeModelImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      name_ar: json['name_ar'] as String?,
      image: json['image'] as String?,
      start_amount: json['start_amount'] as String?,
      end_amount: json['end_amount'] as String?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      deleted_at: json['deleted_at'] as String?,
    );

Map<String, dynamic> _$$DonorTypeModelImplToJson(
        _$DonorTypeModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'name_ar': instance.name_ar,
      'image': instance.image,
      'start_amount': instance.start_amount,
      'end_amount': instance.end_amount,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
    };
