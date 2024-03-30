// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'marks.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MarksModelImpl _$$MarksModelImplFromJson(Map<String, dynamic> json) =>
    _$MarksModelImpl(
      id: json['id'] as int?,
      beneficiary_id: json['beneficiary_id'] as int?,
      academic_year: json['academic_year'] as String?,
      semester: json['semester'] as String?,
      file: json['file'] as String?,
      semester_average: (json['semester_average'] as num?)?.toDouble(),
      semester_result: json['semester_result'] as String?,
      cumulative_average: (json['cumulative_average'] as num?)?.toDouble(),
      notes: json['notes'] as String?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      deleted_at: json['deleted_at'] as String?,
    );

Map<String, dynamic> _$$MarksModelImplToJson(_$MarksModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'beneficiary_id': instance.beneficiary_id,
      'academic_year': instance.academic_year,
      'semester': instance.semester,
      'file': instance.file,
      'semester_average': instance.semester_average,
      'semester_result': instance.semester_result,
      'cumulative_average': instance.cumulative_average,
      'notes': instance.notes,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
    };
