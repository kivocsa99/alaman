// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mou.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MouModelImpl _$$MouModelImplFromJson(Map<String, dynamic> json) =>
    _$MouModelImpl(
      id: json['id'] as int?,
      donor_id: json['donor_id'] as int?,
      mou_status_id: json['mou_status_id'] as int?,
      title: json['title'] as String?,
      amount: json['amount'] as num?,
      currency: json['currency'] as String?,
      start_date: json['start_date'] as String?,
      end_date: json['end_date'] as String?,
      notes: json['notes'] as String?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      deleted_at: json['deleted_at'] as String?,
      status: json['status'] == null
          ? null
          : StatusModel.fromJson(json['status'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MouModelImplToJson(_$MouModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'donor_id': instance.donor_id,
      'mou_status_id': instance.mou_status_id,
      'title': instance.title,
      'amount': instance.amount,
      'currency': instance.currency,
      'start_date': instance.start_date,
      'end_date': instance.end_date,
      'notes': instance.notes,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
      'status': instance.status,
    };
