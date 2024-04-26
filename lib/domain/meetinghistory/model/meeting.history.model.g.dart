// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meeting.history.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MeetingHistoryModelImpl _$$MeetingHistoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$MeetingHistoryModelImpl(
      id: json['id'] as int?,
      beneficiary_id: json['beneficiary_id'] as int?,
      sponser_id: json['sponser_id'] as int?,
      meeting_method_id: json['meeting_method_id'] as int?,
      duration: json['duration'] as String?,
      date: json['date'] as String?,
      time: json['time'] as String?,
      meeting_status_id: json['meeting_status_id'] as int?,
      link: json['link'] as String?,
      notes: json['notes'] as String?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      deleted_at: json['deleted_at'] as String?,
      beneficiary: json['beneficiary'] == null
          ? null
          : BeneficiaryModel.fromJson(
              json['beneficiary'] as Map<String, dynamic>),
      method: json['method'] == null
          ? null
          : MeetingMethodsModel.fromJson(
              json['method'] as Map<String, dynamic>),
      status: json['status'] == null
          ? null
          : StatusModel.fromJson(json['status'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MeetingHistoryModelImplToJson(
        _$MeetingHistoryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'beneficiary_id': instance.beneficiary_id,
      'sponser_id': instance.sponser_id,
      'meeting_method_id': instance.meeting_method_id,
      'duration': instance.duration,
      'date': instance.date,
      'time': instance.time,
      'meeting_status_id': instance.meeting_status_id,
      'link': instance.link,
      'notes': instance.notes,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
      'beneficiary': instance.beneficiary,
      'method': instance.method,
      'status': instance.status,
    };
