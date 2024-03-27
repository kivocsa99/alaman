// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topdonor.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopDonorModelImpl _$$TopDonorModelImplFromJson(Map<String, dynamic> json) =>
    _$TopDonorModelImpl(
      id: json['id'] as int?,
      image: json['image'] as String?,
      name: json['name'] as String?,
      name_ar: json['name_ar'] as String?,
      amount: json['amount'] as num?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      deleted_at: json['deleted_at'] as String?,
    );

Map<String, dynamic> _$$TopDonorModelImplToJson(_$TopDonorModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'name': instance.name,
      'name_ar': instance.name_ar,
      'amount': instance.amount,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
    };
