// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'donor.donation.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DonorDonationImpl _$$DonorDonationImplFromJson(Map<String, dynamic> json) =>
    _$DonorDonationImpl(
      id: json['id'] as int?,
      donation_type_id: json['donation_type_id'] as int?,
      donation_status_id: json['donation_status_id'] as int?,
      payment_method_id: json['payment_method_id'] as int?,
      donor_id: json['donor_id'] as int?,
      mou_id: json['mou_id'] as int?,
      start_date: json['start_date'] as String?,
      end_date: json['end_date'] as String?,
      is_recurring: json['is_recurring'] as int?,
      total_amount: json['total_amount'] as num?,
      location: json['location'] as String?,
      notes: json['notes'] as String?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      deleted_at: json['deleted_at'] as String?,
      type: json['type'] == null
          ? null
          : DonationType.fromJson(json['type'] as Map<String, dynamic>),
      status: json['status'] == null
          ? null
          : StatusModel.fromJson(json['status'] as Map<String, dynamic>),
      payment_method: json['payment_method'] == null
          ? null
          : PaymentMethodModel.fromJson(
              json['payment_method'] as Map<String, dynamic>),
      payments: (json['payments'] as List<dynamic>?)
          ?.map((e) => PaymentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      beneficiaries: (json['beneficiaries'] as List<dynamic>?)
          ?.map(
              (e) => DonorBeneficiaryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DonorDonationImplToJson(_$DonorDonationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'donation_type_id': instance.donation_type_id,
      'donation_status_id': instance.donation_status_id,
      'payment_method_id': instance.payment_method_id,
      'donor_id': instance.donor_id,
      'mou_id': instance.mou_id,
      'start_date': instance.start_date,
      'end_date': instance.end_date,
      'is_recurring': instance.is_recurring,
      'total_amount': instance.total_amount,
      'location': instance.location,
      'notes': instance.notes,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
      'type': instance.type,
      'status': instance.status,
      'payment_method': instance.payment_method,
      'payments': instance.payments,
      'beneficiaries': instance.beneficiaries,
    };
