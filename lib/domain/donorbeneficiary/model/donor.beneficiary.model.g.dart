// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'donor.beneficiary.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DonorBeneficiaryModelImpl _$$DonorBeneficiaryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DonorBeneficiaryModelImpl(
      id: json['id'] as int?,
      donation_id: json['donation_id'] as int?,
      donor_id: json['donor_id'] as int?,
      beneficiary_id: json['beneficiary_id'] as int?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      deleted_at: json['deleted_at'] as String?,
      beneficiary: json['beneficiary'] == null
          ? null
          : BeneficiaryModel.fromJson(
              json['beneficiary'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$DonorBeneficiaryModelImplToJson(
        _$DonorBeneficiaryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'donation_id': instance.donation_id,
      'donor_id': instance.donor_id,
      'beneficiary_id': instance.beneficiary_id,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
      'beneficiary': instance.beneficiary,
    };
