// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'generic.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GenericModelImpl _$$GenericModelImplFromJson(Map<String, dynamic> json) =>
    _$GenericModelImpl(
      AccountSources: (json['AccountSources'] as List<dynamic>?)
          ?.map((e) => AccountSourcesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      AlamanServices: (json['AlamanServices'] as List<dynamic>?)
          ?.map((e) => AlamanServicesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      Cities: (json['Cities'] as List<dynamic>?)
          ?.map((e) => CityModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      CommitmentMethods: (json['CommitmentMethods'] as List<dynamic>?)
          ?.map(
              (e) => CommitmentMethodsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      ScholarshipStatuses: (json['ScholarshipStatuses'] as List<dynamic>?)
          ?.map((e) =>
              ScholarshipStatusesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      ScholarshipTypes: (json['ScholarshipTypes'] as List<dynamic>?)
          ?.map(
              (e) => ScholarshipTypesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      Booths: (json['Booths'] as List<dynamic>?)
          ?.map((e) => BoothModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      Partners: (json['Partners'] as List<dynamic>?)
          ?.map((e) => PartnerModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      TopDonors: (json['TopDonors'] as List<dynamic>?)
          ?.map((e) => TopDonorModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      EducationalYears: (json['EducationalYears'] as List<dynamic>?)
          ?.map((e) => EducationalYearModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      Genders: (json['Genders'] as List<dynamic>?)
          ?.map((e) => GenderModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      MeetingMethods: (json['MeetingMethods'] as List<dynamic>?)
          ?.map((e) => MeetingMethodsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      TrainingPrograms: (json['TrainingPrograms'] as List<dynamic>?)
          ?.map((e) => ProgramModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      DonationFrequencies: (json['DonationFrequencies'] as List<dynamic>?)
          ?.map(
              (e) => DonationFrequencyModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      PaymentMethods: (json['PaymentMethods'] as List<dynamic>?)
          ?.map((e) => PaymentMethodModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      DonationTypes: (json['DonationTypes'] as List<dynamic>?)
          ?.map((e) => DonationType.fromJson(e as Map<String, dynamic>))
          .toList(),
      Avatars: (json['Avatars'] as List<dynamic>?)
          ?.map((e) => AvatarModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      EidiehEnabled: json['EidiehEnabled'] as bool?,
      ONLINE_PAYMENT_ENABLED: json['ONLINE_PAYMENT_ENABLED'] as bool?,
      SHOP_ENABLED: json['SHOP_ENABLED'] as bool?,
    );

Map<String, dynamic> _$$GenericModelImplToJson(_$GenericModelImpl instance) =>
    <String, dynamic>{
      'AccountSources': instance.AccountSources,
      'AlamanServices': instance.AlamanServices,
      'Cities': instance.Cities,
      'CommitmentMethods': instance.CommitmentMethods,
      'ScholarshipStatuses': instance.ScholarshipStatuses,
      'ScholarshipTypes': instance.ScholarshipTypes,
      'Booths': instance.Booths,
      'Partners': instance.Partners,
      'TopDonors': instance.TopDonors,
      'EducationalYears': instance.EducationalYears,
      'Genders': instance.Genders,
      'MeetingMethods': instance.MeetingMethods,
      'TrainingPrograms': instance.TrainingPrograms,
      'DonationFrequencies': instance.DonationFrequencies,
      'PaymentMethods': instance.PaymentMethods,
      'DonationTypes': instance.DonationTypes,
      'Avatars': instance.Avatars,
      'EidiehEnabled': instance.EidiehEnabled,
      'ONLINE_PAYMENT_ENABLED': instance.ONLINE_PAYMENT_ENABLED,
      'SHOP_ENABLED': instance.SHOP_ENABLED,
    };
