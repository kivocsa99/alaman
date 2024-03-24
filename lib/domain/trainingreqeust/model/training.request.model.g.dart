// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'training.request.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TrainingRequestModelImpl _$$TrainingRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TrainingRequestModelImpl(
      id: json['id'] as int?,
      beneficiary_id: json['beneficiary_id'] as int?,
      training_program_id: json['training_program_id'] as int?,
      ematraining_request_status_idil:
          json['ematraining_request_status_idil'] as int?,
      training_date: json['training_date'] as String?,
      training_time: json['training_time'] as String?,
      notes: json['notes'] as String?,
      national_id_number: json['national_id_number'] as String?,
      address: json['address'] as String?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      deleted_at: json['deleted_at'] as String?,
      status: json['status'] == null
          ? null
          : StatusModel.fromJson(json['status'] as Map<String, dynamic>),
      program: json['program'] == null
          ? null
          : ProgramModel.fromJson(json['program'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TrainingRequestModelImplToJson(
        _$TrainingRequestModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'beneficiary_id': instance.beneficiary_id,
      'training_program_id': instance.training_program_id,
      'ematraining_request_status_idil':
          instance.ematraining_request_status_idil,
      'training_date': instance.training_date,
      'training_time': instance.training_time,
      'notes': instance.notes,
      'national_id_number': instance.national_id_number,
      'address': instance.address,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
      'status': instance.status,
      'program': instance.program,
    };

_$ProgramModelImpl _$$ProgramModelImplFromJson(Map<String, dynamic> json) =>
    _$ProgramModelImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      name_ar: json['name_ar'] as String?,
      date_from: json['date_from'] as String?,
      date_to: json['date_to'] as String?,
      time_from: json['time_from'] as String?,
      national_id_number: json['national_id_number'] as String?,
      time_to: json['time_to'] as String?,
      notes: json['notes'] as String?,
      Active: json['Active'] as int?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      deleted_at: json['deleted_at'] as String?,
      status: json['status'] == null
          ? null
          : StatusModel.fromJson(json['status'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProgramModelImplToJson(_$ProgramModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'name_ar': instance.name_ar,
      'date_from': instance.date_from,
      'date_to': instance.date_to,
      'time_from': instance.time_from,
      'national_id_number': instance.national_id_number,
      'time_to': instance.time_to,
      'notes': instance.notes,
      'Active': instance.Active,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
      'status': instance.status,
    };
