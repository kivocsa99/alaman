// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewsModelImpl _$$NewsModelImplFromJson(Map<String, dynamic> json) =>
    _$NewsModelImpl(
      id: json['id'] as int?,
      image: json['image'] as String?,
      title: json['title'] as String?,
      title_ar: json['title_ar'] as String?,
      content: json['content'] as String?,
      content_ar: json['content_ar'] as String?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      deleted_at: json['deleted_at'] as String?,
    );

Map<String, dynamic> _$$NewsModelImplToJson(_$NewsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'title': instance.title,
      'title_ar': instance.title_ar,
      'content': instance.content,
      'content_ar': instance.content_ar,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
    };
