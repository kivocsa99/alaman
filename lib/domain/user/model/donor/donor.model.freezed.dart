// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'donor.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DonorModel _$DonorModelFromJson(Map<String, dynamic> json) {
  return _DonorModel.fromJson(json);
}

/// @nodoc
mixin _$DonorModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get email_verified_at => throw _privateConstructorUsedError;
  String? get account_type => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get national_id_number => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  int? get gender_id => throw _privateConstructorUsedError;
  String? get first_donation_date => throw _privateConstructorUsedError;
  num? get total_donation_amount => throw _privateConstructorUsedError;
  String? get sector => throw _privateConstructorUsedError;
  int? get account_source_id => throw _privateConstructorUsedError;
  int? get city_id => throw _privateConstructorUsedError;
  int? get commitment_method_id => throw _privateConstructorUsedError;
  String? get area => throw _privateConstructorUsedError;
  String? get contact_person => throw _privateConstructorUsedError;
  String? get contact_person_phone => throw _privateConstructorUsedError;
  int? get alaman_contact_person_id => throw _privateConstructorUsedError;
  String? get alaman_join_date => throw _privateConstructorUsedError;
  String? get educational_organization_name =>
      throw _privateConstructorUsedError;
  String? get specialization => throw _privateConstructorUsedError;
  String? get place_of_residence => throw _privateConstructorUsedError;
  int? get educational_year_id => throw _privateConstructorUsedError;
  String? get birthdate => throw _privateConstructorUsedError;
  String? get e_wallet_number => throw _privateConstructorUsedError;
  int? get e_wallet_status => throw _privateConstructorUsedError;
  int? get scholarship_type_id => throw _privateConstructorUsedError;
  int? get scholarship_status_id => throw _privateConstructorUsedError;
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
  String? get theme => throw _privateConstructorUsedError;
  String? get theme_color => throw _privateConstructorUsedError;
  GenderModel? get gender => throw _privateConstructorUsedError;
  CityModel? get city => throw _privateConstructorUsedError;
  List<DonorDonation>? get donor_donations =>
      throw _privateConstructorUsedError;
  List<DonorBeneficiaryModel>? get donor_beneficiaries =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DonorModelCopyWith<DonorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DonorModelCopyWith<$Res> {
  factory $DonorModelCopyWith(
          DonorModel value, $Res Function(DonorModel) then) =
      _$DonorModelCopyWithImpl<$Res, DonorModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? phone,
      String? email,
      String? email_verified_at,
      String? account_type,
      bool? active,
      String? image,
      String? national_id_number,
      String? address,
      int? gender_id,
      String? first_donation_date,
      num? total_donation_amount,
      String? sector,
      int? account_source_id,
      int? city_id,
      int? commitment_method_id,
      String? area,
      String? contact_person,
      String? contact_person_phone,
      int? alaman_contact_person_id,
      String? alaman_join_date,
      String? educational_organization_name,
      String? specialization,
      String? place_of_residence,
      int? educational_year_id,
      String? birthdate,
      String? e_wallet_number,
      int? e_wallet_status,
      int? scholarship_type_id,
      int? scholarship_status_id,
      String? scholarship_status_notes,
      String? rent_expiration_date,
      String? insurance_covering,
      String? insurance_covering_from_date,
      String? insurance_covering_to_date,
      int? donations_goal,
      String? created_at,
      String? updated_at,
      String? deleted_at,
      String? theme,
      String? theme_color,
      GenderModel? gender,
      CityModel? city,
      List<DonorDonation>? donor_donations,
      List<DonorBeneficiaryModel>? donor_beneficiaries});

  $GenderModelCopyWith<$Res>? get gender;
  $CityModelCopyWith<$Res>? get city;
}

/// @nodoc
class _$DonorModelCopyWithImpl<$Res, $Val extends DonorModel>
    implements $DonorModelCopyWith<$Res> {
  _$DonorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? phone = freezed,
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
    Object? educational_organization_name = freezed,
    Object? specialization = freezed,
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
    Object? theme = freezed,
    Object? theme_color = freezed,
    Object? gender = freezed,
    Object? city = freezed,
    Object? donor_donations = freezed,
    Object? donor_beneficiaries = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
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
              as int?,
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
              as int?,
      city_id: freezed == city_id
          ? _value.city_id
          : city_id // ignore: cast_nullable_to_non_nullable
              as int?,
      commitment_method_id: freezed == commitment_method_id
          ? _value.commitment_method_id
          : commitment_method_id // ignore: cast_nullable_to_non_nullable
              as int?,
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
              as int?,
      alaman_join_date: freezed == alaman_join_date
          ? _value.alaman_join_date
          : alaman_join_date // ignore: cast_nullable_to_non_nullable
              as String?,
      educational_organization_name: freezed == educational_organization_name
          ? _value.educational_organization_name
          : educational_organization_name // ignore: cast_nullable_to_non_nullable
              as String?,
      specialization: freezed == specialization
          ? _value.specialization
          : specialization // ignore: cast_nullable_to_non_nullable
              as String?,
      place_of_residence: freezed == place_of_residence
          ? _value.place_of_residence
          : place_of_residence // ignore: cast_nullable_to_non_nullable
              as String?,
      educational_year_id: freezed == educational_year_id
          ? _value.educational_year_id
          : educational_year_id // ignore: cast_nullable_to_non_nullable
              as int?,
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
              as int?,
      scholarship_type_id: freezed == scholarship_type_id
          ? _value.scholarship_type_id
          : scholarship_type_id // ignore: cast_nullable_to_non_nullable
              as int?,
      scholarship_status_id: freezed == scholarship_status_id
          ? _value.scholarship_status_id
          : scholarship_status_id // ignore: cast_nullable_to_non_nullable
              as int?,
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
      donor_donations: freezed == donor_donations
          ? _value.donor_donations
          : donor_donations // ignore: cast_nullable_to_non_nullable
              as List<DonorDonation>?,
      donor_beneficiaries: freezed == donor_beneficiaries
          ? _value.donor_beneficiaries
          : donor_beneficiaries // ignore: cast_nullable_to_non_nullable
              as List<DonorBeneficiaryModel>?,
    ) as $Val);
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
}

/// @nodoc
abstract class _$$DonorModelImplCopyWith<$Res>
    implements $DonorModelCopyWith<$Res> {
  factory _$$DonorModelImplCopyWith(
          _$DonorModelImpl value, $Res Function(_$DonorModelImpl) then) =
      __$$DonorModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? phone,
      String? email,
      String? email_verified_at,
      String? account_type,
      bool? active,
      String? image,
      String? national_id_number,
      String? address,
      int? gender_id,
      String? first_donation_date,
      num? total_donation_amount,
      String? sector,
      int? account_source_id,
      int? city_id,
      int? commitment_method_id,
      String? area,
      String? contact_person,
      String? contact_person_phone,
      int? alaman_contact_person_id,
      String? alaman_join_date,
      String? educational_organization_name,
      String? specialization,
      String? place_of_residence,
      int? educational_year_id,
      String? birthdate,
      String? e_wallet_number,
      int? e_wallet_status,
      int? scholarship_type_id,
      int? scholarship_status_id,
      String? scholarship_status_notes,
      String? rent_expiration_date,
      String? insurance_covering,
      String? insurance_covering_from_date,
      String? insurance_covering_to_date,
      int? donations_goal,
      String? created_at,
      String? updated_at,
      String? deleted_at,
      String? theme,
      String? theme_color,
      GenderModel? gender,
      CityModel? city,
      List<DonorDonation>? donor_donations,
      List<DonorBeneficiaryModel>? donor_beneficiaries});

  @override
  $GenderModelCopyWith<$Res>? get gender;
  @override
  $CityModelCopyWith<$Res>? get city;
}

/// @nodoc
class __$$DonorModelImplCopyWithImpl<$Res>
    extends _$DonorModelCopyWithImpl<$Res, _$DonorModelImpl>
    implements _$$DonorModelImplCopyWith<$Res> {
  __$$DonorModelImplCopyWithImpl(
      _$DonorModelImpl _value, $Res Function(_$DonorModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? phone = freezed,
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
    Object? educational_organization_name = freezed,
    Object? specialization = freezed,
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
    Object? theme = freezed,
    Object? theme_color = freezed,
    Object? gender = freezed,
    Object? city = freezed,
    Object? donor_donations = freezed,
    Object? donor_beneficiaries = freezed,
  }) {
    return _then(_$DonorModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
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
              as int?,
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
              as int?,
      city_id: freezed == city_id
          ? _value.city_id
          : city_id // ignore: cast_nullable_to_non_nullable
              as int?,
      commitment_method_id: freezed == commitment_method_id
          ? _value.commitment_method_id
          : commitment_method_id // ignore: cast_nullable_to_non_nullable
              as int?,
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
              as int?,
      alaman_join_date: freezed == alaman_join_date
          ? _value.alaman_join_date
          : alaman_join_date // ignore: cast_nullable_to_non_nullable
              as String?,
      educational_organization_name: freezed == educational_organization_name
          ? _value.educational_organization_name
          : educational_organization_name // ignore: cast_nullable_to_non_nullable
              as String?,
      specialization: freezed == specialization
          ? _value.specialization
          : specialization // ignore: cast_nullable_to_non_nullable
              as String?,
      place_of_residence: freezed == place_of_residence
          ? _value.place_of_residence
          : place_of_residence // ignore: cast_nullable_to_non_nullable
              as String?,
      educational_year_id: freezed == educational_year_id
          ? _value.educational_year_id
          : educational_year_id // ignore: cast_nullable_to_non_nullable
              as int?,
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
              as int?,
      scholarship_type_id: freezed == scholarship_type_id
          ? _value.scholarship_type_id
          : scholarship_type_id // ignore: cast_nullable_to_non_nullable
              as int?,
      scholarship_status_id: freezed == scholarship_status_id
          ? _value.scholarship_status_id
          : scholarship_status_id // ignore: cast_nullable_to_non_nullable
              as int?,
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
      donor_donations: freezed == donor_donations
          ? _value._donor_donations
          : donor_donations // ignore: cast_nullable_to_non_nullable
              as List<DonorDonation>?,
      donor_beneficiaries: freezed == donor_beneficiaries
          ? _value._donor_beneficiaries
          : donor_beneficiaries // ignore: cast_nullable_to_non_nullable
              as List<DonorBeneficiaryModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DonorModelImpl extends _DonorModel {
  const _$DonorModelImpl(
      {this.id,
      this.name,
      this.phone,
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
      this.educational_organization_name,
      this.specialization,
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
      this.theme,
      this.theme_color,
      this.gender,
      this.city,
      final List<DonorDonation>? donor_donations,
      final List<DonorBeneficiaryModel>? donor_beneficiaries})
      : _donor_donations = donor_donations,
        _donor_beneficiaries = donor_beneficiaries,
        super._();

  factory _$DonorModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DonorModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? phone;
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
  final int? gender_id;
  @override
  final String? first_donation_date;
  @override
  final num? total_donation_amount;
  @override
  final String? sector;
  @override
  final int? account_source_id;
  @override
  final int? city_id;
  @override
  final int? commitment_method_id;
  @override
  final String? area;
  @override
  final String? contact_person;
  @override
  final String? contact_person_phone;
  @override
  final int? alaman_contact_person_id;
  @override
  final String? alaman_join_date;
  @override
  final String? educational_organization_name;
  @override
  final String? specialization;
  @override
  final String? place_of_residence;
  @override
  final int? educational_year_id;
  @override
  final String? birthdate;
  @override
  final String? e_wallet_number;
  @override
  final int? e_wallet_status;
  @override
  final int? scholarship_type_id;
  @override
  final int? scholarship_status_id;
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
  final String? theme;
  @override
  final String? theme_color;
  @override
  final GenderModel? gender;
  @override
  final CityModel? city;
  final List<DonorDonation>? _donor_donations;
  @override
  List<DonorDonation>? get donor_donations {
    final value = _donor_donations;
    if (value == null) return null;
    if (_donor_donations is EqualUnmodifiableListView) return _donor_donations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<DonorBeneficiaryModel>? _donor_beneficiaries;
  @override
  List<DonorBeneficiaryModel>? get donor_beneficiaries {
    final value = _donor_beneficiaries;
    if (value == null) return null;
    if (_donor_beneficiaries is EqualUnmodifiableListView)
      return _donor_beneficiaries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DonorModel(id: $id, name: $name, phone: $phone, email: $email, email_verified_at: $email_verified_at, account_type: $account_type, active: $active, image: $image, national_id_number: $national_id_number, address: $address, gender_id: $gender_id, first_donation_date: $first_donation_date, total_donation_amount: $total_donation_amount, sector: $sector, account_source_id: $account_source_id, city_id: $city_id, commitment_method_id: $commitment_method_id, area: $area, contact_person: $contact_person, contact_person_phone: $contact_person_phone, alaman_contact_person_id: $alaman_contact_person_id, alaman_join_date: $alaman_join_date, educational_organization_name: $educational_organization_name, specialization: $specialization, place_of_residence: $place_of_residence, educational_year_id: $educational_year_id, birthdate: $birthdate, e_wallet_number: $e_wallet_number, e_wallet_status: $e_wallet_status, scholarship_type_id: $scholarship_type_id, scholarship_status_id: $scholarship_status_id, scholarship_status_notes: $scholarship_status_notes, rent_expiration_date: $rent_expiration_date, insurance_covering: $insurance_covering, insurance_covering_from_date: $insurance_covering_from_date, insurance_covering_to_date: $insurance_covering_to_date, donations_goal: $donations_goal, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at, theme: $theme, theme_color: $theme_color, gender: $gender, city: $city, donor_donations: $donor_donations, donor_beneficiaries: $donor_beneficiaries)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DonorModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
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
            (identical(other.gender_id, gender_id) ||
                other.gender_id == gender_id) &&
            (identical(other.first_donation_date, first_donation_date) ||
                other.first_donation_date == first_donation_date) &&
            (identical(other.total_donation_amount, total_donation_amount) ||
                other.total_donation_amount == total_donation_amount) &&
            (identical(other.sector, sector) || other.sector == sector) &&
            (identical(other.account_source_id, account_source_id) ||
                other.account_source_id == account_source_id) &&
            (identical(other.city_id, city_id) || other.city_id == city_id) &&
            (identical(other.commitment_method_id, commitment_method_id) ||
                other.commitment_method_id == commitment_method_id) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.contact_person, contact_person) ||
                other.contact_person == contact_person) &&
            (identical(other.contact_person_phone, contact_person_phone) ||
                other.contact_person_phone == contact_person_phone) &&
            (identical(other.alaman_contact_person_id, alaman_contact_person_id) ||
                other.alaman_contact_person_id == alaman_contact_person_id) &&
            (identical(other.alaman_join_date, alaman_join_date) ||
                other.alaman_join_date == alaman_join_date) &&
            (identical(other.educational_organization_name, educational_organization_name) ||
                other.educational_organization_name ==
                    educational_organization_name) &&
            (identical(other.specialization, specialization) ||
                other.specialization == specialization) &&
            (identical(other.place_of_residence, place_of_residence) ||
                other.place_of_residence == place_of_residence) &&
            (identical(other.educational_year_id, educational_year_id) ||
                other.educational_year_id == educational_year_id) &&
            (identical(other.birthdate, birthdate) ||
                other.birthdate == birthdate) &&
            (identical(other.e_wallet_number, e_wallet_number) ||
                other.e_wallet_number == e_wallet_number) &&
            (identical(other.e_wallet_status, e_wallet_status) ||
                other.e_wallet_status == e_wallet_status) &&
            (identical(other.scholarship_type_id, scholarship_type_id) ||
                other.scholarship_type_id == scholarship_type_id) &&
            (identical(other.scholarship_status_id, scholarship_status_id) ||
                other.scholarship_status_id == scholarship_status_id) &&
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
            (identical(other.deleted_at, deleted_at) || other.deleted_at == deleted_at) &&
            (identical(other.theme, theme) || other.theme == theme) &&
            (identical(other.theme_color, theme_color) || other.theme_color == theme_color) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.city, city) || other.city == city) &&
            const DeepCollectionEquality().equals(other._donor_donations, _donor_donations) &&
            const DeepCollectionEquality().equals(other._donor_beneficiaries, _donor_beneficiaries));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        phone,
        email,
        email_verified_at,
        account_type,
        active,
        image,
        national_id_number,
        address,
        gender_id,
        first_donation_date,
        total_donation_amount,
        sector,
        account_source_id,
        city_id,
        commitment_method_id,
        area,
        contact_person,
        contact_person_phone,
        alaman_contact_person_id,
        alaman_join_date,
        educational_organization_name,
        specialization,
        place_of_residence,
        educational_year_id,
        birthdate,
        e_wallet_number,
        e_wallet_status,
        scholarship_type_id,
        scholarship_status_id,
        scholarship_status_notes,
        rent_expiration_date,
        insurance_covering,
        insurance_covering_from_date,
        insurance_covering_to_date,
        donations_goal,
        created_at,
        updated_at,
        deleted_at,
        theme,
        theme_color,
        gender,
        city,
        const DeepCollectionEquality().hash(_donor_donations),
        const DeepCollectionEquality().hash(_donor_beneficiaries)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DonorModelImplCopyWith<_$DonorModelImpl> get copyWith =>
      __$$DonorModelImplCopyWithImpl<_$DonorModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DonorModelImplToJson(
      this,
    );
  }
}

abstract class _DonorModel extends DonorModel {
  const factory _DonorModel(
          {final int? id,
          final String? name,
          final String? phone,
          final String? email,
          final String? email_verified_at,
          final String? account_type,
          final bool? active,
          final String? image,
          final String? national_id_number,
          final String? address,
          final int? gender_id,
          final String? first_donation_date,
          final num? total_donation_amount,
          final String? sector,
          final int? account_source_id,
          final int? city_id,
          final int? commitment_method_id,
          final String? area,
          final String? contact_person,
          final String? contact_person_phone,
          final int? alaman_contact_person_id,
          final String? alaman_join_date,
          final String? educational_organization_name,
          final String? specialization,
          final String? place_of_residence,
          final int? educational_year_id,
          final String? birthdate,
          final String? e_wallet_number,
          final int? e_wallet_status,
          final int? scholarship_type_id,
          final int? scholarship_status_id,
          final String? scholarship_status_notes,
          final String? rent_expiration_date,
          final String? insurance_covering,
          final String? insurance_covering_from_date,
          final String? insurance_covering_to_date,
          final int? donations_goal,
          final String? created_at,
          final String? updated_at,
          final String? deleted_at,
          final String? theme,
          final String? theme_color,
          final GenderModel? gender,
          final CityModel? city,
          final List<DonorDonation>? donor_donations,
          final List<DonorBeneficiaryModel>? donor_beneficiaries}) =
      _$DonorModelImpl;
  const _DonorModel._() : super._();

  factory _DonorModel.fromJson(Map<String, dynamic> json) =
      _$DonorModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get phone;
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
  int? get gender_id;
  @override
  String? get first_donation_date;
  @override
  num? get total_donation_amount;
  @override
  String? get sector;
  @override
  int? get account_source_id;
  @override
  int? get city_id;
  @override
  int? get commitment_method_id;
  @override
  String? get area;
  @override
  String? get contact_person;
  @override
  String? get contact_person_phone;
  @override
  int? get alaman_contact_person_id;
  @override
  String? get alaman_join_date;
  @override
  String? get educational_organization_name;
  @override
  String? get specialization;
  @override
  String? get place_of_residence;
  @override
  int? get educational_year_id;
  @override
  String? get birthdate;
  @override
  String? get e_wallet_number;
  @override
  int? get e_wallet_status;
  @override
  int? get scholarship_type_id;
  @override
  int? get scholarship_status_id;
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
  String? get theme;
  @override
  String? get theme_color;
  @override
  GenderModel? get gender;
  @override
  CityModel? get city;
  @override
  List<DonorDonation>? get donor_donations;
  @override
  List<DonorBeneficiaryModel>? get donor_beneficiaries;
  @override
  @JsonKey(ignore: true)
  _$$DonorModelImplCopyWith<_$DonorModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
