// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tax.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaxModelImpl _$$TaxModelImplFromJson(Map<String, dynamic> json) =>
    _$TaxModelImpl(
      id: json['id'] as int?,
      donor_id: json['donor_id'] as int?,
      user_id: json['user_id'] as int?,
      tax_exemption_status_id: json['tax_exemption_status_id'] as int?,
      year: json['year'] as String?,
      notes: json['notes'] as String?,
      file: json['file'] as String?,
      status: json['status'] == null
          ? null
          : StatusModel.fromJson(json['status'] as Map<String, dynamic>),
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      deleted_at: json['deleted_at'] as String?,
    );

Map<String, dynamic> _$$TaxModelImplToJson(_$TaxModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'donor_id': instance.donor_id,
      'user_id': instance.user_id,
      'tax_exemption_status_id': instance.tax_exemption_status_id,
      'year': instance.year,
      'notes': instance.notes,
      'file': instance.file,
      'status': instance.status,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
    };
