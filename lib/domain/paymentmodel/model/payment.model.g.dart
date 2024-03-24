// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaymentModelImpl _$$PaymentModelImplFromJson(Map<String, dynamic> json) =>
    _$PaymentModelImpl(
      id: json['id'] as int?,
      mou_id: json['mou_id'] as int?,
      donation_id: json['donation_id'] as int?,
      donor_id: json['donor_id'] as int?,
      payment_status_id: json['payment_status_id'] as int?,
      due_date: json['due_date'] as int?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      amount: json['amount'] as num?,
      provider_ref: json['provider_ref'] as String?,
      provider_callback: json['provider_callback'] as String?,
      is_success: json['is_success'] as int?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      deleted_at: json['deleted_at'] as String?,
    );

Map<String, dynamic> _$$PaymentModelImplToJson(_$PaymentModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'mou_id': instance.mou_id,
      'donation_id': instance.donation_id,
      'donor_id': instance.donor_id,
      'payment_status_id': instance.payment_status_id,
      'due_date': instance.due_date,
      'name': instance.name,
      'email': instance.email,
      'amount': instance.amount,
      'provider_ref': instance.provider_ref,
      'provider_callback': instance.provider_callback,
      'is_success': instance.is_success,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
    };
