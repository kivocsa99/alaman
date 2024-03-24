// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'donor.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DonorModelImpl _$$DonorModelImplFromJson(Map<String, dynamic> json) =>
    _$DonorModelImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      phone: json['phone'] as String?,
      email: json['email'] as String?,
      email_verified_at: json['email_verified_at'] as String?,
      account_type: json['account_type'] as String?,
      active: json['active'] as bool?,
      image: json['image'] as String?,
      national_id_number: json['national_id_number'] as String?,
      address: json['address'] as String?,
      gender_id: json['gender_id'] as int?,
      first_donation_date: json['first_donation_date'] as String?,
      total_donation_amount: json['total_donation_amount'] as num?,
      sector: json['sector'] as String?,
      account_source_id: json['account_source_id'] as int?,
      city_id: json['city_id'] as int?,
      commitment_method_id: json['commitment_method_id'] as int?,
      area: json['area'] as String?,
      contact_person: json['contact_person'] as String?,
      contact_person_phone: json['contact_person_phone'] as String?,
      alaman_contact_person_id: json['alaman_contact_person_id'] as int?,
      alaman_join_date: json['alaman_join_date'] as String?,
      educational_organization_name:
          json['educational_organization_name'] as String?,
      specialization: json['specialization'] as String?,
      place_of_residence: json['place_of_residence'] as String?,
      educational_year_id: json['educational_year_id'] as int?,
      birthdate: json['birthdate'] as String?,
      e_wallet_number: json['e_wallet_number'] as String?,
      e_wallet_status: json['e_wallet_status'] as int?,
      scholarship_type_id: json['scholarship_type_id'] as int?,
      scholarship_status_id: json['scholarship_status_id'] as int?,
      scholarship_status_notes: json['scholarship_status_notes'] as String?,
      rent_expiration_date: json['rent_expiration_date'] as String?,
      insurance_covering: json['insurance_covering'] as String?,
      insurance_covering_from_date:
          json['insurance_covering_from_date'] as String?,
      insurance_covering_to_date: json['insurance_covering_to_date'] as String?,
      donations_goal: json['donations_goal'] as int?,
      created_at: json['created_at'] as String?,
      updated_at: json['updated_at'] as String?,
      deleted_at: json['deleted_at'] as String?,
      theme: json['theme'] as String?,
      theme_color: json['theme_color'] as String?,
      gender: json['gender'] == null
          ? null
          : GenderModel.fromJson(json['gender'] as Map<String, dynamic>),
      city: json['city'] == null
          ? null
          : CityModel.fromJson(json['city'] as Map<String, dynamic>),
      donor_donation: (json['donor_donation'] as List<dynamic>?)
          ?.map((e) => DonorDonation.fromJson(e as Map<String, dynamic>))
          .toList(),
      donor_beneficiaries: (json['donor_beneficiaries'] as List<dynamic>?)
          ?.map(
              (e) => DonorBeneficiaryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DonorModelImplToJson(_$DonorModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone': instance.phone,
      'email': instance.email,
      'email_verified_at': instance.email_verified_at,
      'account_type': instance.account_type,
      'active': instance.active,
      'image': instance.image,
      'national_id_number': instance.national_id_number,
      'address': instance.address,
      'gender_id': instance.gender_id,
      'first_donation_date': instance.first_donation_date,
      'total_donation_amount': instance.total_donation_amount,
      'sector': instance.sector,
      'account_source_id': instance.account_source_id,
      'city_id': instance.city_id,
      'commitment_method_id': instance.commitment_method_id,
      'area': instance.area,
      'contact_person': instance.contact_person,
      'contact_person_phone': instance.contact_person_phone,
      'alaman_contact_person_id': instance.alaman_contact_person_id,
      'alaman_join_date': instance.alaman_join_date,
      'educational_organization_name': instance.educational_organization_name,
      'specialization': instance.specialization,
      'place_of_residence': instance.place_of_residence,
      'educational_year_id': instance.educational_year_id,
      'birthdate': instance.birthdate,
      'e_wallet_number': instance.e_wallet_number,
      'e_wallet_status': instance.e_wallet_status,
      'scholarship_type_id': instance.scholarship_type_id,
      'scholarship_status_id': instance.scholarship_status_id,
      'scholarship_status_notes': instance.scholarship_status_notes,
      'rent_expiration_date': instance.rent_expiration_date,
      'insurance_covering': instance.insurance_covering,
      'insurance_covering_from_date': instance.insurance_covering_from_date,
      'insurance_covering_to_date': instance.insurance_covering_to_date,
      'donations_goal': instance.donations_goal,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'deleted_at': instance.deleted_at,
      'theme': instance.theme,
      'theme_color': instance.theme_color,
      'gender': instance.gender,
      'city': instance.city,
      'donor_donation': instance.donor_donation,
      'donor_beneficiaries': instance.donor_beneficiaries,
    };
