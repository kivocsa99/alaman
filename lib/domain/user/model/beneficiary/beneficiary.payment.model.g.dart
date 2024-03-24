// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beneficiary.payment.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BeneficiaryPaymentModelImpl _$$BeneficiaryPaymentModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BeneficiaryPaymentModelImpl(
      id: json['id'] as int?,
      beneficiary_id: json['beneficiary_id'] as int?,
      donor_id: json['donor_id'] as int?,
      recorded_by: json['recorded_by'] as int?,
      amount: json['amount'] as num?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      deleted_at: json['deleted_at'] as String?,
    );

Map<String, dynamic> _$$BeneficiaryPaymentModelImplToJson(
        _$BeneficiaryPaymentModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'beneficiary_id': instance.beneficiary_id,
      'donor_id': instance.donor_id,
      'recorded_by': instance.recorded_by,
      'amount': instance.amount,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
    };
