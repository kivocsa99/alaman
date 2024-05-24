// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beneficiary.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BeneficiaryModelImpl _$$BeneficiaryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BeneficiaryModelImpl(
      id: json['id'],
      name: json['name'] as String?,
      name_ar: json['name_ar'] as String?,
      phone: json['phone'] as String?,
      bio: json['bio'] as String?,
      bio_ar: json['bio_ar'] as String?,
      email: json['email'] as String?,
      email_verified_at: json['email_verified_at'] as String?,
      account_type: json['account_type'] as String?,
      active: json['active'] as bool?,
      image: json['image'] as String?,
      national_id_number: json['national_id_number'] as String?,
      address: json['address'] as String?,
      gender_id: json['gender_id'],
      first_donation_date: json['first_donation_date'] as String?,
      total_donation_amount: json['total_donation_amount'] as num?,
      sector: json['sector'] as String?,
      account_source_id: json['account_source_id'],
      city_id: json['city_id'],
      commitment_method_id: json['commitment_method_id'],
      area: json['area'] as String?,
      contact_person: json['contact_person'] as String?,
      contact_person_phone: json['contact_person_phone'] as String?,
      alaman_contact_person_id: json['alaman_contact_person_id'],
      alaman_estimated_graduation_date:
          json['alaman_estimated_graduation_date'] as String?,
      alaman_join_date: json['alaman_join_date'] as String?,
      educational_organization: json['educational_organization'] == null
          ? null
          : StatusModel.fromJson(
              json['educational_organization'] as Map<String, dynamic>),
      major: json['major'] == null
          ? null
          : StatusModel.fromJson(json['major'] as Map<String, dynamic>),
      place_of_residence: json['place_of_residence'],
      educational_year_id: json['educational_year_id'],
      birthdate: json['birthdate'] as String?,
      e_wallet_number: json['e_wallet_number'] as String?,
      e_wallet_status: json['e_wallet_status'],
      scholarship_type_id: json['scholarship_type_id'],
      scholarship_status_id: json['scholarship_status_id'],
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
      social_id: json['social_id'] as String?,
      apple_id: json['apple_id'] as String?,
      google_id: json['google_id'] as String?,
      theme: json['theme'] as String?,
      theme_color: json['theme_color'] as String?,
      gender: json['gender'] == null
          ? null
          : GenderModel.fromJson(json['gender'] as Map<String, dynamic>),
      city: json['city'] == null
          ? null
          : CityModel.fromJson(json['city'] as Map<String, dynamic>),
      donor_donation: json['donor_donation'] == null
          ? null
          : DonorDonation.fromJson(
              json['donor_donation'] as Map<String, dynamic>),
      educational_year: json['educational_year'] == null
          ? null
          : EducationalYearModel.fromJson(
              json['educational_year'] as Map<String, dynamic>),
      scholarship_status: json['scholarship_status'] == null
          ? null
          : ScholarshipStatusesModel.fromJson(
              json['scholarship_status'] as Map<String, dynamic>),
      scholarship_type: json['scholarship_type'] == null
          ? null
          : ScholarshipTypesModel.fromJson(
              json['scholarship_type'] as Map<String, dynamic>),
      beneficiary_payments: (json['beneficiary_payments'] as List<dynamic>?)
          ?.map((e) =>
              BeneficiaryPaymentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      marks: (json['marks'] as List<dynamic>?)
          ?.map((e) => MarksModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BeneficiaryModelImplToJson(
        _$BeneficiaryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'name_ar': instance.name_ar,
      'phone': instance.phone,
      'bio': instance.bio,
      'bio_ar': instance.bio_ar,
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
      'alaman_estimated_graduation_date':
          instance.alaman_estimated_graduation_date,
      'alaman_join_date': instance.alaman_join_date,
      'educational_organization': instance.educational_organization,
      'major': instance.major,
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
      'social_id': instance.social_id,
      'apple_id': instance.apple_id,
      'google_id': instance.google_id,
      'theme': instance.theme,
      'theme_color': instance.theme_color,
      'gender': instance.gender,
      'city': instance.city,
      'donor_donation': instance.donor_donation,
      'educational_year': instance.educational_year,
      'scholarship_status': instance.scholarship_status,
      'scholarship_type': instance.scholarship_type,
      'beneficiary_payments': instance.beneficiary_payments,
      'marks': instance.marks,
    };
