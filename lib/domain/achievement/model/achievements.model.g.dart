// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'achievements.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AchievementsModelImpl _$$AchievementsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AchievementsModelImpl(
      id: json['id'] as int?,
      beneficiary_id: json['beneficiary_id'] as int?,
      image: json['image'] as String?,
      title: json['title'] as String?,
      title_ar: json['title_ar'] as String?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      deleted_at: json['deleted_at'] as String?,
    );

Map<String, dynamic> _$$AchievementsModelImplToJson(
        _$AchievementsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'beneficiary_id': instance.beneficiary_id,
      'image': instance.image,
      'title': instance.title,
      'title_ar': instance.title_ar,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
    };
