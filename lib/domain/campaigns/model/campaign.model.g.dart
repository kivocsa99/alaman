// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaign.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CampaignModelImpl _$$CampaignModelImplFromJson(Map<String, dynamic> json) =>
    _$CampaignModelImpl(
      id: json['id'] as int?,
      image: json['image'] as String?,
      name: json['name'] as String?,
      name_ar: json['name_ar'] as String?,
      text: json['text'] as String?,
      text_ar: json['text_ar'] as String?,
      active: json['active'] as int?,
      href: json['href'] as String?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      deleted_at: json['deleted_at'] as String?,
    );

Map<String, dynamic> _$$CampaignModelImplToJson(_$CampaignModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'name': instance.name,
      'name_ar': instance.name_ar,
      'text': instance.text,
      'text_ar': instance.text_ar,
      'active': instance.active,
      'href': instance.href,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
    };
