// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shared.donor.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SharedDonorModelImpl _$$SharedDonorModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SharedDonorModelImpl(
      AZSVR: json['AZSVR'] as String?,
      User: json['User'] == null
          ? null
          : DonorModel.fromJson(json['User'] as Map<String, dynamic>),
      beneficiaries: (json['beneficiaries'] as List<dynamic>?)
          ?.map((e) => BeneficiaryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SharedDonorModelImplToJson(
        _$SharedDonorModelImpl instance) =>
    <String, dynamic>{
      'AZSVR': instance.AZSVR,
      'User': instance.User,
      'beneficiaries': instance.beneficiaries,
    };
