// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partner.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PartnerModelImpl _$$PartnerModelImplFromJson(Map<String, dynamic> json) =>
    _$PartnerModelImpl(
      id: json['id'] as int?,
      image: json['image'] as String?,
      name: json['name'] as String?,
      name_ar: json['name_ar'] as String?,
      href: json['href'] as String?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      deleted_at: json['deleted_at'] as String?,
    );

Map<String, dynamic> _$$PartnerModelImplToJson(_$PartnerModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'name': instance.name,
      'name_ar': instance.name_ar,
      'href': instance.href,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
    };
