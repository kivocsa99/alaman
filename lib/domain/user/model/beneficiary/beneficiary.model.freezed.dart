// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'beneficiary.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BeneficiaryModel _$BeneficiaryModelFromJson(Map<String, dynamic> json) {
  return _BeneficiaryModel.fromJson(json);
}

/// @nodoc
mixin _$BeneficiaryModel {
  dynamic get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get name_ar => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  String? get bio_ar => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get email_verified_at => throw _privateConstructorUsedError;
  String? get account_type => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get national_id_number => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  dynamic get gender_id => throw _privateConstructorUsedError;
  String? get first_donation_date => throw _privateConstructorUsedError;
  num? get total_donation_amount => throw _privateConstructorUsedError;
  String? get sector => throw _privateConstructorUsedError;
  dynamic get account_source_id => throw _privateConstructorUsedError;
  dynamic get city_id => throw _privateConstructorUsedError;
  dynamic get commitment_method_id => throw _privateConstructorUsedError;
  String? get area => throw _privateConstructorUsedError;
  String? get contact_person => throw _privateConstructorUsedError;
  String? get contact_person_phone => throw _privateConstructorUsedError;
  dynamic get alaman_contact_person_id => throw _privateConstructorUsedError;
  String? get alaman_join_date => throw _privateConstructorUsedError;
  StatusModel? get educational_organization =>
      throw _privateConstructorUsedError;
  StatusModel? get major => throw _privateConstructorUsedError;
  dynamic get place_of_residence => throw _privateConstructorUsedError;
  dynamic get educational_year_id => throw _privateConstructorUsedError;
  String? get birthdate => throw _privateConstructorUsedError;
  String? get e_wallet_number => throw _privateConstructorUsedError;
  dynamic get e_wallet_status => throw _privateConstructorUsedError;
  dynamic get scholarship_type_id => throw _privateConstructorUsedError;
  dynamic get scholarship_status_id => throw _privateConstructorUsedError;
  String? get scholarship_status_notes => throw _privateConstructorUsedError;
  String? get rent_expiration_date => throw _privateConstructorUsedError;
  String? get insurance_covering => throw _privateConstructorUsedError;
  String? get insurance_covering_from_date =>
      throw _privateConstructorUsedError;
  String? get insurance_covering_to_date => throw _privateConstructorUsedError;
  int? get donations_goal => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  String? get updated_at => throw _privateConstructorUsedError;
  String? get deleted_at => throw _privateConstructorUsedError;
  String? get social_id => throw _privateConstructorUsedError;
  String? get apple_id => throw _privateConstructorUsedError;
  String? get google_id => throw _privateConstructorUsedError;
  String? get theme => throw _privateConstructorUsedError;
  String? get theme_color => throw _privateConstructorUsedError;
  GenderModel? get gender => throw _privateConstructorUsedError;
  CityModel? get city => throw _privateConstructorUsedError;
  DonorDonation? get donor_donation => throw _privateConstructorUsedError;
  EducationalYearModel? get educational_year =>
      throw _privateConstructorUsedError;
  ScholarshipStatusesModel? get scholarship_status =>
      throw _privateConstructorUsedError;
  ScholarshipTypesModel? get scholarship_type =>
      throw _privateConstructorUsedError;
  List<BeneficiaryPaymentModel>? get beneficiary_payments =>
      throw _privateConstructorUsedError;
  List<MarksModel>? get marks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BeneficiaryModelCopyWith<BeneficiaryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeneficiaryModelCopyWith<$Res> {
  factory $BeneficiaryModelCopyWith(
          BeneficiaryModel value, $Res Function(BeneficiaryModel) then) =
      _$BeneficiaryModelCopyWithImpl<$Res, BeneficiaryModel>;
  @useResult
  $Res call(
      {dynamic id,
      String? name,
      String? name_ar,
      String? phone,
      String? bio,
      String? bio_ar,
      String? email,
      String? email_verified_at,
      String? account_type,
      bool? active,
      String? image,
      String? national_id_number,
      String? address,
      dynamic gender_id,
      String? first_donation_date,
      num? total_donation_amount,
      String? sector,
      dynamic account_source_id,
      dynamic city_id,
      dynamic commitment_method_id,
      String? area,
      String? contact_person,
      String? contact_person_phone,
      dynamic alaman_contact_person_id,
      String? alaman_join_date,
      StatusModel? educational_organization,
      StatusModel? major,
      dynamic place_of_residence,
      dynamic educational_year_id,
      String? birthdate,
      String? e_wallet_number,
      dynamic e_wallet_status,
      dynamic scholarship_type_id,
      dynamic scholarship_status_id,
      String? scholarship_status_notes,
      String? rent_expiration_date,
      String? insurance_covering,
      String? insurance_covering_from_date,
      String? insurance_covering_to_date,
      int? donations_goal,
      String? created_at,
      String? updated_at,
      String? deleted_at,
      String? social_id,
      String? apple_id,
      String? google_id,
      String? theme,
      String? theme_color,
      GenderModel? gender,
      CityModel? city,
      DonorDonation? donor_donation,
      EducationalYearModel? educational_year,
      ScholarshipStatusesModel? scholarship_status,
      ScholarshipTypesModel? scholarship_type,
      List<BeneficiaryPaymentModel>? beneficiary_payments,
      List<MarksModel>? marks});

  $StatusModelCopyWith<$Res>? get educational_organization;
  $StatusModelCopyWith<$Res>? get major;
  $GenderModelCopyWith<$Res>? get gender;
  $CityModelCopyWith<$Res>? get city;
  $DonorDonationCopyWith<$Res>? get donor_donation;
  $EducationalYearModelCopyWith<$Res>? get educational_year;
  $ScholarshipStatusesModelCopyWith<$Res>? get scholarship_status;
  $ScholarshipTypesModelCopyWith<$Res>? get scholarship_type;
}

/// @nodoc
class _$BeneficiaryModelCopyWithImpl<$Res, $Val extends BeneficiaryModel>
    implements $BeneficiaryModelCopyWith<$Res> {
  _$BeneficiaryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? name_ar = freezed,
    Object? phone = freezed,
    Object? bio = freezed,
    Object? bio_ar = freezed,
    Object? email = freezed,
    Object? email_verified_at = freezed,
    Object? account_type = freezed,
    Object? active = freezed,
    Object? image = freezed,
    Object? national_id_number = freezed,
    Object? address = freezed,
    Object? gender_id = freezed,
    Object? first_donation_date = freezed,
    Object? total_donation_amount = freezed,
    Object? sector = freezed,
    Object? account_source_id = freezed,
    Object? city_id = freezed,
    Object? commitment_method_id = freezed,
    Object? area = freezed,
    Object? contact_person = freezed,
    Object? contact_person_phone = freezed,
    Object? alaman_contact_person_id = freezed,
    Object? alaman_join_date = freezed,
    Object? educational_organization = freezed,
    Object? major = freezed,
    Object? place_of_residence = freezed,
    Object? educational_year_id = freezed,
    Object? birthdate = freezed,
    Object? e_wallet_number = freezed,
    Object? e_wallet_status = freezed,
    Object? scholarship_type_id = freezed,
    Object? scholarship_status_id = freezed,
    Object? scholarship_status_notes = freezed,
    Object? rent_expiration_date = freezed,
    Object? insurance_covering = freezed,
    Object? insurance_covering_from_date = freezed,
    Object? insurance_covering_to_date = freezed,
    Object? donations_goal = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
    Object? social_id = freezed,
    Object? apple_id = freezed,
    Object? google_id = freezed,
    Object? theme = freezed,
    Object? theme_color = freezed,
    Object? gender = freezed,
    Object? city = freezed,
    Object? donor_donation = freezed,
    Object? educational_year = freezed,
    Object? scholarship_status = freezed,
    Object? scholarship_type = freezed,
    Object? beneficiary_payments = freezed,
    Object? marks = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      name_ar: freezed == name_ar
          ? _value.name_ar
          : name_ar // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      bio_ar: freezed == bio_ar
          ? _value.bio_ar
          : bio_ar // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      email_verified_at: freezed == email_verified_at
          ? _value.email_verified_at
          : email_verified_at // ignore: cast_nullable_to_non_nullable
              as String?,
      account_type: freezed == account_type
          ? _value.account_type
          : account_type // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      national_id_number: freezed == national_id_number
          ? _value.national_id_number
          : national_id_number // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      gender_id: freezed == gender_id
          ? _value.gender_id
          : gender_id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      first_donation_date: freezed == first_donation_date
          ? _value.first_donation_date
          : first_donation_date // ignore: cast_nullable_to_non_nullable
              as String?,
      total_donation_amount: freezed == total_donation_amount
          ? _value.total_donation_amount
          : total_donation_amount // ignore: cast_nullable_to_non_nullable
              as num?,
      sector: freezed == sector
          ? _value.sector
          : sector // ignore: cast_nullable_to_non_nullable
              as String?,
      account_source_id: freezed == account_source_id
          ? _value.account_source_id
          : account_source_id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      city_id: freezed == city_id
          ? _value.city_id
          : city_id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      commitment_method_id: freezed == commitment_method_id
          ? _value.commitment_method_id
          : commitment_method_id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      area: freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String?,
      contact_person: freezed == contact_person
          ? _value.contact_person
          : contact_person // ignore: cast_nullable_to_non_nullable
              as String?,
      contact_person_phone: freezed == contact_person_phone
          ? _value.contact_person_phone
          : contact_person_phone // ignore: cast_nullable_to_non_nullable
              as String?,
      alaman_contact_person_id: freezed == alaman_contact_person_id
          ? _value.alaman_contact_person_id
          : alaman_contact_person_id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      alaman_join_date: freezed == alaman_join_date
          ? _value.alaman_join_date
          : alaman_join_date // ignore: cast_nullable_to_non_nullable
              as String?,
      educational_organization: freezed == educational_organization
          ? _value.educational_organization
          : educational_organization // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
      major: freezed == major
          ? _value.major
          : major // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
      place_of_residence: freezed == place_of_residence
          ? _value.place_of_residence
          : place_of_residence // ignore: cast_nullable_to_non_nullable
              as dynamic,
      educational_year_id: freezed == educational_year_id
          ? _value.educational_year_id
          : educational_year_id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      birthdate: freezed == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as String?,
      e_wallet_number: freezed == e_wallet_number
          ? _value.e_wallet_number
          : e_wallet_number // ignore: cast_nullable_to_non_nullable
              as String?,
      e_wallet_status: freezed == e_wallet_status
          ? _value.e_wallet_status
          : e_wallet_status // ignore: cast_nullable_to_non_nullable
              as dynamic,
      scholarship_type_id: freezed == scholarship_type_id
          ? _value.scholarship_type_id
          : scholarship_type_id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      scholarship_status_id: freezed == scholarship_status_id
          ? _value.scholarship_status_id
          : scholarship_status_id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      scholarship_status_notes: freezed == scholarship_status_notes
          ? _value.scholarship_status_notes
          : scholarship_status_notes // ignore: cast_nullable_to_non_nullable
              as String?,
      rent_expiration_date: freezed == rent_expiration_date
          ? _value.rent_expiration_date
          : rent_expiration_date // ignore: cast_nullable_to_non_nullable
              as String?,
      insurance_covering: freezed == insurance_covering
          ? _value.insurance_covering
          : insurance_covering // ignore: cast_nullable_to_non_nullable
              as String?,
      insurance_covering_from_date: freezed == insurance_covering_from_date
          ? _value.insurance_covering_from_date
          : insurance_covering_from_date // ignore: cast_nullable_to_non_nullable
              as String?,
      insurance_covering_to_date: freezed == insurance_covering_to_date
          ? _value.insurance_covering_to_date
          : insurance_covering_to_date // ignore: cast_nullable_to_non_nullable
              as String?,
      donations_goal: freezed == donations_goal
          ? _value.donations_goal
          : donations_goal // ignore: cast_nullable_to_non_nullable
              as int?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String?,
      deleted_at: freezed == deleted_at
          ? _value.deleted_at
          : deleted_at // ignore: cast_nullable_to_non_nullable
              as String?,
      social_id: freezed == social_id
          ? _value.social_id
          : social_id // ignore: cast_nullable_to_non_nullable
              as String?,
      apple_id: freezed == apple_id
          ? _value.apple_id
          : apple_id // ignore: cast_nullable_to_non_nullable
              as String?,
      google_id: freezed == google_id
          ? _value.google_id
          : google_id // ignore: cast_nullable_to_non_nullable
              as String?,
      theme: freezed == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as String?,
      theme_color: freezed == theme_color
          ? _value.theme_color
          : theme_color // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as GenderModel?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as CityModel?,
      donor_donation: freezed == donor_donation
          ? _value.donor_donation
          : donor_donation // ignore: cast_nullable_to_non_nullable
              as DonorDonation?,
      educational_year: freezed == educational_year
          ? _value.educational_year
          : educational_year // ignore: cast_nullable_to_non_nullable
              as EducationalYearModel?,
      scholarship_status: freezed == scholarship_status
          ? _value.scholarship_status
          : scholarship_status // ignore: cast_nullable_to_non_nullable
              as ScholarshipStatusesModel?,
      scholarship_type: freezed == scholarship_type
          ? _value.scholarship_type
          : scholarship_type // ignore: cast_nullable_to_non_nullable
              as ScholarshipTypesModel?,
      beneficiary_payments: freezed == beneficiary_payments
          ? _value.beneficiary_payments
          : beneficiary_payments // ignore: cast_nullable_to_non_nullable
              as List<BeneficiaryPaymentModel>?,
      marks: freezed == marks
          ? _value.marks
          : marks // ignore: cast_nullable_to_non_nullable
              as List<MarksModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StatusModelCopyWith<$Res>? get educational_organization {
    if (_value.educational_organization == null) {
      return null;
    }

    return $StatusModelCopyWith<$Res>(_value.educational_organization!,
        (value) {
      return _then(_value.copyWith(educational_organization: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StatusModelCopyWith<$Res>? get major {
    if (_value.major == null) {
      return null;
    }

    return $StatusModelCopyWith<$Res>(_value.major!, (value) {
      return _then(_value.copyWith(major: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GenderModelCopyWith<$Res>? get gender {
    if (_value.gender == null) {
      return null;
    }

    return $GenderModelCopyWith<$Res>(_value.gender!, (value) {
      return _then(_value.copyWith(gender: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CityModelCopyWith<$Res>? get city {
    if (_value.city == null) {
      return null;
    }

    return $CityModelCopyWith<$Res>(_value.city!, (value) {
      return _then(_value.copyWith(city: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DonorDonationCopyWith<$Res>? get donor_donation {
    if (_value.donor_donation == null) {
      return null;
    }

    return $DonorDonationCopyWith<$Res>(_value.donor_donation!, (value) {
      return _then(_value.copyWith(donor_donation: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EducationalYearModelCopyWith<$Res>? get educational_year {
    if (_value.educational_year == null) {
      return null;
    }

    return $EducationalYearModelCopyWith<$Res>(_value.educational_year!,
        (value) {
      return _then(_value.copyWith(educational_year: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ScholarshipStatusesModelCopyWith<$Res>? get scholarship_status {
    if (_value.scholarship_status == null) {
      return null;
    }

    return $ScholarshipStatusesModelCopyWith<$Res>(_value.scholarship_status!,
        (value) {
      return _then(_value.copyWith(scholarship_status: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ScholarshipTypesModelCopyWith<$Res>? get scholarship_type {
    if (_value.scholarship_type == null) {
      return null;
    }

    return $ScholarshipTypesModelCopyWith<$Res>(_value.scholarship_type!,
        (value) {
      return _then(_value.copyWith(scholarship_type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BeneficiaryModelImplCopyWith<$Res>
    implements $BeneficiaryModelCopyWith<$Res> {
  factory _$$BeneficiaryModelImplCopyWith(_$BeneficiaryModelImpl value,
          $Res Function(_$BeneficiaryModelImpl) then) =
      __$$BeneficiaryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {dynamic id,
      String? name,
      String? name_ar,
      String? phone,
      String? bio,
      String? bio_ar,
      String? email,
      String? email_verified_at,
      String? account_type,
      bool? active,
      String? image,
      String? national_id_number,
      String? address,
      dynamic gender_id,
      String? first_donation_date,
      num? total_donation_amount,
      String? sector,
      dynamic account_source_id,
      dynamic city_id,
      dynamic commitment_method_id,
      String? area,
      String? contact_person,
      String? contact_person_phone,
      dynamic alaman_contact_person_id,
      String? alaman_join_date,
      StatusModel? educational_organization,
      StatusModel? major,
      dynamic place_of_residence,
      dynamic educational_year_id,
      String? birthdate,
      String? e_wallet_number,
      dynamic e_wallet_status,
      dynamic scholarship_type_id,
      dynamic scholarship_status_id,
      String? scholarship_status_notes,
      String? rent_expiration_date,
      String? insurance_covering,
      String? insurance_covering_from_date,
      String? insurance_covering_to_date,
      int? donations_goal,
      String? created_at,
      String? updated_at,
      String? deleted_at,
      String? social_id,
      String? apple_id,
      String? google_id,
      String? theme,
      String? theme_color,
      GenderModel? gender,
      CityModel? city,
      DonorDonation? donor_donation,
      EducationalYearModel? educational_year,
      ScholarshipStatusesModel? scholarship_status,
      ScholarshipTypesModel? scholarship_type,
      List<BeneficiaryPaymentModel>? beneficiary_payments,
      List<MarksModel>? marks});

  @override
  $StatusModelCopyWith<$Res>? get educational_organization;
  @override
  $StatusModelCopyWith<$Res>? get major;
  @override
  $GenderModelCopyWith<$Res>? get gender;
  @override
  $CityModelCopyWith<$Res>? get city;
  @override
  $DonorDonationCopyWith<$Res>? get donor_donation;
  @override
  $EducationalYearModelCopyWith<$Res>? get educational_year;
  @override
  $ScholarshipStatusesModelCopyWith<$Res>? get scholarship_status;
  @override
  $ScholarshipTypesModelCopyWith<$Res>? get scholarship_type;
}

/// @nodoc
class __$$BeneficiaryModelImplCopyWithImpl<$Res>
    extends _$BeneficiaryModelCopyWithImpl<$Res, _$BeneficiaryModelImpl>
    implements _$$BeneficiaryModelImplCopyWith<$Res> {
  __$$BeneficiaryModelImplCopyWithImpl(_$BeneficiaryModelImpl _value,
      $Res Function(_$BeneficiaryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? name_ar = freezed,
    Object? phone = freezed,
    Object? bio = freezed,
    Object? bio_ar = freezed,
    Object? email = freezed,
    Object? email_verified_at = freezed,
    Object? account_type = freezed,
    Object? active = freezed,
    Object? image = freezed,
    Object? national_id_number = freezed,
    Object? address = freezed,
    Object? gender_id = freezed,
    Object? first_donation_date = freezed,
    Object? total_donation_amount = freezed,
    Object? sector = freezed,
    Object? account_source_id = freezed,
    Object? city_id = freezed,
    Object? commitment_method_id = freezed,
    Object? area = freezed,
    Object? contact_person = freezed,
    Object? contact_person_phone = freezed,
    Object? alaman_contact_person_id = freezed,
    Object? alaman_join_date = freezed,
    Object? educational_organization = freezed,
    Object? major = freezed,
    Object? place_of_residence = freezed,
    Object? educational_year_id = freezed,
    Object? birthdate = freezed,
    Object? e_wallet_number = freezed,
    Object? e_wallet_status = freezed,
    Object? scholarship_type_id = freezed,
    Object? scholarship_status_id = freezed,
    Object? scholarship_status_notes = freezed,
    Object? rent_expiration_date = freezed,
    Object? insurance_covering = freezed,
    Object? insurance_covering_from_date = freezed,
    Object? insurance_covering_to_date = freezed,
    Object? donations_goal = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
    Object? social_id = freezed,
    Object? apple_id = freezed,
    Object? google_id = freezed,
    Object? theme = freezed,
    Object? theme_color = freezed,
    Object? gender = freezed,
    Object? city = freezed,
    Object? donor_donation = freezed,
    Object? educational_year = freezed,
    Object? scholarship_status = freezed,
    Object? scholarship_type = freezed,
    Object? beneficiary_payments = freezed,
    Object? marks = freezed,
  }) {
    return _then(_$BeneficiaryModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      name_ar: freezed == name_ar
          ? _value.name_ar
          : name_ar // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      bio_ar: freezed == bio_ar
          ? _value.bio_ar
          : bio_ar // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      email_verified_at: freezed == email_verified_at
          ? _value.email_verified_at
          : email_verified_at // ignore: cast_nullable_to_non_nullable
              as String?,
      account_type: freezed == account_type
          ? _value.account_type
          : account_type // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      national_id_number: freezed == national_id_number
          ? _value.national_id_number
          : national_id_number // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      gender_id: freezed == gender_id
          ? _value.gender_id
          : gender_id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      first_donation_date: freezed == first_donation_date
          ? _value.first_donation_date
          : first_donation_date // ignore: cast_nullable_to_non_nullable
              as String?,
      total_donation_amount: freezed == total_donation_amount
          ? _value.total_donation_amount
          : total_donation_amount // ignore: cast_nullable_to_non_nullable
              as num?,
      sector: freezed == sector
          ? _value.sector
          : sector // ignore: cast_nullable_to_non_nullable
              as String?,
      account_source_id: freezed == account_source_id
          ? _value.account_source_id
          : account_source_id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      city_id: freezed == city_id
          ? _value.city_id
          : city_id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      commitment_method_id: freezed == commitment_method_id
          ? _value.commitment_method_id
          : commitment_method_id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      area: freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String?,
      contact_person: freezed == contact_person
          ? _value.contact_person
          : contact_person // ignore: cast_nullable_to_non_nullable
              as String?,
      contact_person_phone: freezed == contact_person_phone
          ? _value.contact_person_phone
          : contact_person_phone // ignore: cast_nullable_to_non_nullable
              as String?,
      alaman_contact_person_id: freezed == alaman_contact_person_id
          ? _value.alaman_contact_person_id
          : alaman_contact_person_id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      alaman_join_date: freezed == alaman_join_date
          ? _value.alaman_join_date
          : alaman_join_date // ignore: cast_nullable_to_non_nullable
              as String?,
      educational_organization: freezed == educational_organization
          ? _value.educational_organization
          : educational_organization // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
      major: freezed == major
          ? _value.major
          : major // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
      place_of_residence: freezed == place_of_residence
          ? _value.place_of_residence
          : place_of_residence // ignore: cast_nullable_to_non_nullable
              as dynamic,
      educational_year_id: freezed == educational_year_id
          ? _value.educational_year_id
          : educational_year_id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      birthdate: freezed == birthdate
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as String?,
      e_wallet_number: freezed == e_wallet_number
          ? _value.e_wallet_number
          : e_wallet_number // ignore: cast_nullable_to_non_nullable
              as String?,
      e_wallet_status: freezed == e_wallet_status
          ? _value.e_wallet_status
          : e_wallet_status // ignore: cast_nullable_to_non_nullable
              as dynamic,
      scholarship_type_id: freezed == scholarship_type_id
          ? _value.scholarship_type_id
          : scholarship_type_id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      scholarship_status_id: freezed == scholarship_status_id
          ? _value.scholarship_status_id
          : scholarship_status_id // ignore: cast_nullable_to_non_nullable
              as dynamic,
      scholarship_status_notes: freezed == scholarship_status_notes
          ? _value.scholarship_status_notes
          : scholarship_status_notes // ignore: cast_nullable_to_non_nullable
              as String?,
      rent_expiration_date: freezed == rent_expiration_date
          ? _value.rent_expiration_date
          : rent_expiration_date // ignore: cast_nullable_to_non_nullable
              as String?,
      insurance_covering: freezed == insurance_covering
          ? _value.insurance_covering
          : insurance_covering // ignore: cast_nullable_to_non_nullable
              as String?,
      insurance_covering_from_date: freezed == insurance_covering_from_date
          ? _value.insurance_covering_from_date
          : insurance_covering_from_date // ignore: cast_nullable_to_non_nullable
              as String?,
      insurance_covering_to_date: freezed == insurance_covering_to_date
          ? _value.insurance_covering_to_date
          : insurance_covering_to_date // ignore: cast_nullable_to_non_nullable
              as String?,
      donations_goal: freezed == donations_goal
          ? _value.donations_goal
          : donations_goal // ignore: cast_nullable_to_non_nullable
              as int?,
      created_at: freezed == created_at
          ? _value.created_at
          : created_at // ignore: cast_nullable_to_non_nullable
              as String?,
      updated_at: freezed == updated_at
          ? _value.updated_at
          : updated_at // ignore: cast_nullable_to_non_nullable
              as String?,
      deleted_at: freezed == deleted_at
          ? _value.deleted_at
          : deleted_at // ignore: cast_nullable_to_non_nullable
              as String?,
      social_id: freezed == social_id
          ? _value.social_id
          : social_id // ignore: cast_nullable_to_non_nullable
              as String?,
      apple_id: freezed == apple_id
          ? _value.apple_id
          : apple_id // ignore: cast_nullable_to_non_nullable
              as String?,
      google_id: freezed == google_id
          ? _value.google_id
          : google_id // ignore: cast_nullable_to_non_nullable
              as String?,
      theme: freezed == theme
          ? _value.theme
          : theme // ignore: cast_nullable_to_non_nullable
              as String?,
      theme_color: freezed == theme_color
          ? _value.theme_color
          : theme_color // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as GenderModel?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as CityModel?,
      donor_donation: freezed == donor_donation
          ? _value.donor_donation
          : donor_donation // ignore: cast_nullable_to_non_nullable
              as DonorDonation?,
      educational_year: freezed == educational_year
          ? _value.educational_year
          : educational_year // ignore: cast_nullable_to_non_nullable
              as EducationalYearModel?,
      scholarship_status: freezed == scholarship_status
          ? _value.scholarship_status
          : scholarship_status // ignore: cast_nullable_to_non_nullable
              as ScholarshipStatusesModel?,
      scholarship_type: freezed == scholarship_type
          ? _value.scholarship_type
          : scholarship_type // ignore: cast_nullable_to_non_nullable
              as ScholarshipTypesModel?,
      beneficiary_payments: freezed == beneficiary_payments
          ? _value._beneficiary_payments
          : beneficiary_payments // ignore: cast_nullable_to_non_nullable
              as List<BeneficiaryPaymentModel>?,
      marks: freezed == marks
          ? _value._marks
          : marks // ignore: cast_nullable_to_non_nullable
              as List<MarksModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BeneficiaryModelImpl extends _BeneficiaryModel {
  const _$BeneficiaryModelImpl(
      {this.id,
      this.name,
      this.name_ar,
      this.phone,
      this.bio,
      this.bio_ar,
      this.email,
      this.email_verified_at,
      this.account_type,
      this.active,
      this.image,
      this.national_id_number,
      this.address,
      this.gender_id,
      this.first_donation_date,
      this.total_donation_amount,
      this.sector,
      this.account_source_id,
      this.city_id,
      this.commitment_method_id,
      this.area,
      this.contact_person,
      this.contact_person_phone,
      this.alaman_contact_person_id,
      this.alaman_join_date,
      this.educational_organization,
      this.major,
      this.place_of_residence,
      this.educational_year_id,
      this.birthdate,
      this.e_wallet_number,
      this.e_wallet_status,
      this.scholarship_type_id,
      this.scholarship_status_id,
      this.scholarship_status_notes,
      this.rent_expiration_date,
      this.insurance_covering,
      this.insurance_covering_from_date,
      this.insurance_covering_to_date,
      this.donations_goal,
      this.created_at,
      this.updated_at,
      this.deleted_at,
      this.social_id,
      this.apple_id,
      this.google_id,
      this.theme,
      this.theme_color,
      this.gender,
      this.city,
      this.donor_donation,
      this.educational_year,
      this.scholarship_status,
      this.scholarship_type,
      final List<BeneficiaryPaymentModel>? beneficiary_payments,
      final List<MarksModel>? marks})
      : _beneficiary_payments = beneficiary_payments,
        _marks = marks,
        super._();

  factory _$BeneficiaryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BeneficiaryModelImplFromJson(json);

  @override
  final dynamic id;
  @override
  final String? name;
  @override
  final String? name_ar;
  @override
  final String? phone;
  @override
  final String? bio;
  @override
  final String? bio_ar;
  @override
  final String? email;
  @override
  final String? email_verified_at;
  @override
  final String? account_type;
  @override
  final bool? active;
  @override
  final String? image;
  @override
  final String? national_id_number;
  @override
  final String? address;
  @override
  final dynamic gender_id;
  @override
  final String? first_donation_date;
  @override
  final num? total_donation_amount;
  @override
  final String? sector;
  @override
  final dynamic account_source_id;
  @override
  final dynamic city_id;
  @override
  final dynamic commitment_method_id;
  @override
  final String? area;
  @override
  final String? contact_person;
  @override
  final String? contact_person_phone;
  @override
  final dynamic alaman_contact_person_id;
  @override
  final String? alaman_join_date;
  @override
  final StatusModel? educational_organization;
  @override
  final StatusModel? major;
  @override
  final dynamic place_of_residence;
  @override
  final dynamic educational_year_id;
  @override
  final String? birthdate;
  @override
  final String? e_wallet_number;
  @override
  final dynamic e_wallet_status;
  @override
  final dynamic scholarship_type_id;
  @override
  final dynamic scholarship_status_id;
  @override
  final String? scholarship_status_notes;
  @override
  final String? rent_expiration_date;
  @override
  final String? insurance_covering;
  @override
  final String? insurance_covering_from_date;
  @override
  final String? insurance_covering_to_date;
  @override
  final int? donations_goal;
  @override
  final String? created_at;
  @override
  final String? updated_at;
  @override
  final String? deleted_at;
  @override
  final String? social_id;
  @override
  final String? apple_id;
  @override
  final String? google_id;
  @override
  final String? theme;
  @override
  final String? theme_color;
  @override
  final GenderModel? gender;
  @override
  final CityModel? city;
  @override
  final DonorDonation? donor_donation;
  @override
  final EducationalYearModel? educational_year;
  @override
  final ScholarshipStatusesModel? scholarship_status;
  @override
  final ScholarshipTypesModel? scholarship_type;
  final List<BeneficiaryPaymentModel>? _beneficiary_payments;
  @override
  List<BeneficiaryPaymentModel>? get beneficiary_payments {
    final value = _beneficiary_payments;
    if (value == null) return null;
    if (_beneficiary_payments is EqualUnmodifiableListView)
      return _beneficiary_payments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<MarksModel>? _marks;
  @override
  List<MarksModel>? get marks {
    final value = _marks;
    if (value == null) return null;
    if (_marks is EqualUnmodifiableListView) return _marks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BeneficiaryModel(id: $id, name: $name, name_ar: $name_ar, phone: $phone, bio: $bio, bio_ar: $bio_ar, email: $email, email_verified_at: $email_verified_at, account_type: $account_type, active: $active, image: $image, national_id_number: $national_id_number, address: $address, gender_id: $gender_id, first_donation_date: $first_donation_date, total_donation_amount: $total_donation_amount, sector: $sector, account_source_id: $account_source_id, city_id: $city_id, commitment_method_id: $commitment_method_id, area: $area, contact_person: $contact_person, contact_person_phone: $contact_person_phone, alaman_contact_person_id: $alaman_contact_person_id, alaman_join_date: $alaman_join_date, educational_organization: $educational_organization, major: $major, place_of_residence: $place_of_residence, educational_year_id: $educational_year_id, birthdate: $birthdate, e_wallet_number: $e_wallet_number, e_wallet_status: $e_wallet_status, scholarship_type_id: $scholarship_type_id, scholarship_status_id: $scholarship_status_id, scholarship_status_notes: $scholarship_status_notes, rent_expiration_date: $rent_expiration_date, insurance_covering: $insurance_covering, insurance_covering_from_date: $insurance_covering_from_date, insurance_covering_to_date: $insurance_covering_to_date, donations_goal: $donations_goal, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at, social_id: $social_id, apple_id: $apple_id, google_id: $google_id, theme: $theme, theme_color: $theme_color, gender: $gender, city: $city, donor_donation: $donor_donation, educational_year: $educational_year, scholarship_status: $scholarship_status, scholarship_type: $scholarship_type, beneficiary_payments: $beneficiary_payments, marks: $marks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BeneficiaryModelImpl &&
            const DeepCollectionEquality().equals(other.id, id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.name_ar, name_ar) || other.name_ar == name_ar) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.bio_ar, bio_ar) || other.bio_ar == bio_ar) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.email_verified_at, email_verified_at) ||
                other.email_verified_at == email_verified_at) &&
            (identical(other.account_type, account_type) ||
                other.account_type == account_type) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.national_id_number, national_id_number) ||
                other.national_id_number == national_id_number) &&
            (identical(other.address, address) || other.address == address) &&
            const DeepCollectionEquality().equals(other.gender_id, gender_id) &&
            (identical(other.first_donation_date, first_donation_date) ||
                other.first_donation_date == first_donation_date) &&
            (identical(other.total_donation_amount, total_donation_amount) ||
                other.total_donation_amount == total_donation_amount) &&
            (identical(other.sector, sector) || other.sector == sector) &&
            const DeepCollectionEquality()
                .equals(other.account_source_id, account_source_id) &&
            const DeepCollectionEquality().equals(other.city_id, city_id) &&
            const DeepCollectionEquality()
                .equals(other.commitment_method_id, commitment_method_id) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.contact_person, contact_person) ||
                other.contact_person == contact_person) &&
            (identical(other.contact_person_phone, contact_person_phone) ||
                other.contact_person_phone == contact_person_phone) &&
            const DeepCollectionEquality().equals(
                other.alaman_contact_person_id, alaman_contact_person_id) &&
            (identical(other.alaman_join_date, alaman_join_date) ||
                other.alaman_join_date == alaman_join_date) &&
            (identical(other.educational_organization, educational_organization) ||
                other.educational_organization == educational_organization) &&
            (identical(other.major, major) || other.major == major) &&
            const DeepCollectionEquality()
                .equals(other.place_of_residence, place_of_residence) &&
            const DeepCollectionEquality()
                .equals(other.educational_year_id, educational_year_id) &&
            (identical(other.birthdate, birthdate) ||
                other.birthdate == birthdate) &&
            (identical(other.e_wallet_number, e_wallet_number) ||
                other.e_wallet_number == e_wallet_number) &&
            const DeepCollectionEquality()
                .equals(other.e_wallet_status, e_wallet_status) &&
            const DeepCollectionEquality()
                .equals(other.scholarship_type_id, scholarship_type_id) &&
            const DeepCollectionEquality()
                .equals(other.scholarship_status_id, scholarship_status_id) &&
            (identical(other.scholarship_status_notes, scholarship_status_notes) ||
                other.scholarship_status_notes == scholarship_status_notes) &&
            (identical(other.rent_expiration_date, rent_expiration_date) ||
                other.rent_expiration_date == rent_expiration_date) &&
            (identical(other.insurance_covering, insurance_covering) ||
                other.insurance_covering == insurance_covering) &&
            (identical(other.insurance_covering_from_date, insurance_covering_from_date) ||
                other.insurance_covering_from_date ==
                    insurance_covering_from_date) &&
            (identical(other.insurance_covering_to_date, insurance_covering_to_date) ||
                other.insurance_covering_to_date ==
                    insurance_covering_to_date) &&
            (identical(other.donations_goal, donations_goal) ||
                other.donations_goal == donations_goal) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.deleted_at, deleted_at) ||
                other.deleted_at == deleted_at) &&
            (identical(other.social_id, social_id) ||
                other.social_id == social_id) &&
            (identical(other.apple_id, apple_id) ||
                other.apple_id == apple_id) &&
            (identical(other.google_id, google_id) ||
                other.google_id == google_id) &&
            (identical(other.theme, theme) || other.theme == theme) &&
            (identical(other.theme_color, theme_color) ||
                other.theme_color == theme_color) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.donor_donation, donor_donation) || other.donor_donation == donor_donation) &&
            (identical(other.educational_year, educational_year) || other.educational_year == educational_year) &&
            (identical(other.scholarship_status, scholarship_status) || other.scholarship_status == scholarship_status) &&
            (identical(other.scholarship_type, scholarship_type) || other.scholarship_type == scholarship_type) &&
            const DeepCollectionEquality().equals(other._beneficiary_payments, _beneficiary_payments) &&
            const DeepCollectionEquality().equals(other._marks, _marks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        name,
        name_ar,
        phone,
        bio,
        bio_ar,
        email,
        email_verified_at,
        account_type,
        active,
        image,
        national_id_number,
        address,
        const DeepCollectionEquality().hash(gender_id),
        first_donation_date,
        total_donation_amount,
        sector,
        const DeepCollectionEquality().hash(account_source_id),
        const DeepCollectionEquality().hash(city_id),
        const DeepCollectionEquality().hash(commitment_method_id),
        area,
        contact_person,
        contact_person_phone,
        const DeepCollectionEquality().hash(alaman_contact_person_id),
        alaman_join_date,
        educational_organization,
        major,
        const DeepCollectionEquality().hash(place_of_residence),
        const DeepCollectionEquality().hash(educational_year_id),
        birthdate,
        e_wallet_number,
        const DeepCollectionEquality().hash(e_wallet_status),
        const DeepCollectionEquality().hash(scholarship_type_id),
        const DeepCollectionEquality().hash(scholarship_status_id),
        scholarship_status_notes,
        rent_expiration_date,
        insurance_covering,
        insurance_covering_from_date,
        insurance_covering_to_date,
        donations_goal,
        created_at,
        updated_at,
        deleted_at,
        social_id,
        apple_id,
        google_id,
        theme,
        theme_color,
        gender,
        city,
        donor_donation,
        educational_year,
        scholarship_status,
        scholarship_type,
        const DeepCollectionEquality().hash(_beneficiary_payments),
        const DeepCollectionEquality().hash(_marks)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BeneficiaryModelImplCopyWith<_$BeneficiaryModelImpl> get copyWith =>
      __$$BeneficiaryModelImplCopyWithImpl<_$BeneficiaryModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BeneficiaryModelImplToJson(
      this,
    );
  }
}

abstract class _BeneficiaryModel extends BeneficiaryModel {
  const factory _BeneficiaryModel(
      {final dynamic id,
      final String? name,
      final String? name_ar,
      final String? phone,
      final String? bio,
      final String? bio_ar,
      final String? email,
      final String? email_verified_at,
      final String? account_type,
      final bool? active,
      final String? image,
      final String? national_id_number,
      final String? address,
      final dynamic gender_id,
      final String? first_donation_date,
      final num? total_donation_amount,
      final String? sector,
      final dynamic account_source_id,
      final dynamic city_id,
      final dynamic commitment_method_id,
      final String? area,
      final String? contact_person,
      final String? contact_person_phone,
      final dynamic alaman_contact_person_id,
      final String? alaman_join_date,
      final StatusModel? educational_organization,
      final StatusModel? major,
      final dynamic place_of_residence,
      final dynamic educational_year_id,
      final String? birthdate,
      final String? e_wallet_number,
      final dynamic e_wallet_status,
      final dynamic scholarship_type_id,
      final dynamic scholarship_status_id,
      final String? scholarship_status_notes,
      final String? rent_expiration_date,
      final String? insurance_covering,
      final String? insurance_covering_from_date,
      final String? insurance_covering_to_date,
      final int? donations_goal,
      final String? created_at,
      final String? updated_at,
      final String? deleted_at,
      final String? social_id,
      final String? apple_id,
      final String? google_id,
      final String? theme,
      final String? theme_color,
      final GenderModel? gender,
      final CityModel? city,
      final DonorDonation? donor_donation,
      final EducationalYearModel? educational_year,
      final ScholarshipStatusesModel? scholarship_status,
      final ScholarshipTypesModel? scholarship_type,
      final List<BeneficiaryPaymentModel>? beneficiary_payments,
      final List<MarksModel>? marks}) = _$BeneficiaryModelImpl;
  const _BeneficiaryModel._() : super._();

  factory _BeneficiaryModel.fromJson(Map<String, dynamic> json) =
      _$BeneficiaryModelImpl.fromJson;

  @override
  dynamic get id;
  @override
  String? get name;
  @override
  String? get name_ar;
  @override
  String? get phone;
  @override
  String? get bio;
  @override
  String? get bio_ar;
  @override
  String? get email;
  @override
  String? get email_verified_at;
  @override
  String? get account_type;
  @override
  bool? get active;
  @override
  String? get image;
  @override
  String? get national_id_number;
  @override
  String? get address;
  @override
  dynamic get gender_id;
  @override
  String? get first_donation_date;
  @override
  num? get total_donation_amount;
  @override
  String? get sector;
  @override
  dynamic get account_source_id;
  @override
  dynamic get city_id;
  @override
  dynamic get commitment_method_id;
  @override
  String? get area;
  @override
  String? get contact_person;
  @override
  String? get contact_person_phone;
  @override
  dynamic get alaman_contact_person_id;
  @override
  String? get alaman_join_date;
  @override
  StatusModel? get educational_organization;
  @override
  StatusModel? get major;
  @override
  dynamic get place_of_residence;
  @override
  dynamic get educational_year_id;
  @override
  String? get birthdate;
  @override
  String? get e_wallet_number;
  @override
  dynamic get e_wallet_status;
  @override
  dynamic get scholarship_type_id;
  @override
  dynamic get scholarship_status_id;
  @override
  String? get scholarship_status_notes;
  @override
  String? get rent_expiration_date;
  @override
  String? get insurance_covering;
  @override
  String? get insurance_covering_from_date;
  @override
  String? get insurance_covering_to_date;
  @override
  int? get donations_goal;
  @override
  String? get created_at;
  @override
  String? get updated_at;
  @override
  String? get deleted_at;
  @override
  String? get social_id;
  @override
  String? get apple_id;
  @override
  String? get google_id;
  @override
  String? get theme;
  @override
  String? get theme_color;
  @override
  GenderModel? get gender;
  @override
  CityModel? get city;
  @override
  DonorDonation? get donor_donation;
  @override
  EducationalYearModel? get educational_year;
  @override
  ScholarshipStatusesModel? get scholarship_status;
  @override
  ScholarshipTypesModel? get scholarship_type;
  @override
  List<BeneficiaryPaymentModel>? get beneficiary_payments;
  @override
  List<MarksModel>? get marks;
  @override
  @JsonKey(ignore: true)
  _$$BeneficiaryModelImplCopyWith<_$BeneficiaryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
