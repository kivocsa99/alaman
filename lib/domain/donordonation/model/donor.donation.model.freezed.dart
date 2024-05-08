// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'donor.donation.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DonorDonation _$DonorDonationFromJson(Map<String, dynamic> json) {
  return _DonorDonation.fromJson(json);
}

/// @nodoc
mixin _$DonorDonation {
  int? get id => throw _privateConstructorUsedError;
  int? get donation_type_id => throw _privateConstructorUsedError;
  int? get donation_status_id => throw _privateConstructorUsedError;
  int? get payment_method_id => throw _privateConstructorUsedError;
  int? get donor_id => throw _privateConstructorUsedError;
  int? get mou_id => throw _privateConstructorUsedError;
  String? get start_date => throw _privateConstructorUsedError;
  String? get end_date => throw _privateConstructorUsedError;
  int? get is_recurring => throw _privateConstructorUsedError;
  num? get total_amount => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  String? get updated_at => throw _privateConstructorUsedError;
  String? get deleted_at => throw _privateConstructorUsedError;
  DonationType? get type => throw _privateConstructorUsedError;
  StatusModel? get status => throw _privateConstructorUsedError;
  PaymentMethodModel? get payment_method => throw _privateConstructorUsedError;
  List<PaymentModel>? get payments => throw _privateConstructorUsedError;
  List<DonorBeneficiaryModel>? get beneficiaries =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DonorDonationCopyWith<DonorDonation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DonorDonationCopyWith<$Res> {
  factory $DonorDonationCopyWith(
          DonorDonation value, $Res Function(DonorDonation) then) =
      _$DonorDonationCopyWithImpl<$Res, DonorDonation>;
  @useResult
  $Res call(
      {int? id,
      int? donation_type_id,
      int? donation_status_id,
      int? payment_method_id,
      int? donor_id,
      int? mou_id,
      String? start_date,
      String? end_date,
      int? is_recurring,
      num? total_amount,
      String? location,
      String? notes,
      String? created_at,
      String? updated_at,
      String? deleted_at,
      DonationType? type,
      StatusModel? status,
      PaymentMethodModel? payment_method,
      List<PaymentModel>? payments,
      List<DonorBeneficiaryModel>? beneficiaries});

  $DonationTypeCopyWith<$Res>? get type;
  $StatusModelCopyWith<$Res>? get status;
  $PaymentMethodModelCopyWith<$Res>? get payment_method;
}

/// @nodoc
class _$DonorDonationCopyWithImpl<$Res, $Val extends DonorDonation>
    implements $DonorDonationCopyWith<$Res> {
  _$DonorDonationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? donation_type_id = freezed,
    Object? donation_status_id = freezed,
    Object? payment_method_id = freezed,
    Object? donor_id = freezed,
    Object? mou_id = freezed,
    Object? start_date = freezed,
    Object? end_date = freezed,
    Object? is_recurring = freezed,
    Object? total_amount = freezed,
    Object? location = freezed,
    Object? notes = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
    Object? type = freezed,
    Object? status = freezed,
    Object? payment_method = freezed,
    Object? payments = freezed,
    Object? beneficiaries = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      donation_type_id: freezed == donation_type_id
          ? _value.donation_type_id
          : donation_type_id // ignore: cast_nullable_to_non_nullable
              as int?,
      donation_status_id: freezed == donation_status_id
          ? _value.donation_status_id
          : donation_status_id // ignore: cast_nullable_to_non_nullable
              as int?,
      payment_method_id: freezed == payment_method_id
          ? _value.payment_method_id
          : payment_method_id // ignore: cast_nullable_to_non_nullable
              as int?,
      donor_id: freezed == donor_id
          ? _value.donor_id
          : donor_id // ignore: cast_nullable_to_non_nullable
              as int?,
      mou_id: freezed == mou_id
          ? _value.mou_id
          : mou_id // ignore: cast_nullable_to_non_nullable
              as int?,
      start_date: freezed == start_date
          ? _value.start_date
          : start_date // ignore: cast_nullable_to_non_nullable
              as String?,
      end_date: freezed == end_date
          ? _value.end_date
          : end_date // ignore: cast_nullable_to_non_nullable
              as String?,
      is_recurring: freezed == is_recurring
          ? _value.is_recurring
          : is_recurring // ignore: cast_nullable_to_non_nullable
              as int?,
      total_amount: freezed == total_amount
          ? _value.total_amount
          : total_amount // ignore: cast_nullable_to_non_nullable
              as num?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
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
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DonationType?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
      payment_method: freezed == payment_method
          ? _value.payment_method
          : payment_method // ignore: cast_nullable_to_non_nullable
              as PaymentMethodModel?,
      payments: freezed == payments
          ? _value.payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<PaymentModel>?,
      beneficiaries: freezed == beneficiaries
          ? _value.beneficiaries
          : beneficiaries // ignore: cast_nullable_to_non_nullable
              as List<DonorBeneficiaryModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DonationTypeCopyWith<$Res>? get type {
    if (_value.type == null) {
      return null;
    }

    return $DonationTypeCopyWith<$Res>(_value.type!, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StatusModelCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $StatusModelCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentMethodModelCopyWith<$Res>? get payment_method {
    if (_value.payment_method == null) {
      return null;
    }

    return $PaymentMethodModelCopyWith<$Res>(_value.payment_method!, (value) {
      return _then(_value.copyWith(payment_method: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DonorDonationImplCopyWith<$Res>
    implements $DonorDonationCopyWith<$Res> {
  factory _$$DonorDonationImplCopyWith(
          _$DonorDonationImpl value, $Res Function(_$DonorDonationImpl) then) =
      __$$DonorDonationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? donation_type_id,
      int? donation_status_id,
      int? payment_method_id,
      int? donor_id,
      int? mou_id,
      String? start_date,
      String? end_date,
      int? is_recurring,
      num? total_amount,
      String? location,
      String? notes,
      String? created_at,
      String? updated_at,
      String? deleted_at,
      DonationType? type,
      StatusModel? status,
      PaymentMethodModel? payment_method,
      List<PaymentModel>? payments,
      List<DonorBeneficiaryModel>? beneficiaries});

  @override
  $DonationTypeCopyWith<$Res>? get type;
  @override
  $StatusModelCopyWith<$Res>? get status;
  @override
  $PaymentMethodModelCopyWith<$Res>? get payment_method;
}

/// @nodoc
class __$$DonorDonationImplCopyWithImpl<$Res>
    extends _$DonorDonationCopyWithImpl<$Res, _$DonorDonationImpl>
    implements _$$DonorDonationImplCopyWith<$Res> {
  __$$DonorDonationImplCopyWithImpl(
      _$DonorDonationImpl _value, $Res Function(_$DonorDonationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? donation_type_id = freezed,
    Object? donation_status_id = freezed,
    Object? payment_method_id = freezed,
    Object? donor_id = freezed,
    Object? mou_id = freezed,
    Object? start_date = freezed,
    Object? end_date = freezed,
    Object? is_recurring = freezed,
    Object? total_amount = freezed,
    Object? location = freezed,
    Object? notes = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
    Object? type = freezed,
    Object? status = freezed,
    Object? payment_method = freezed,
    Object? payments = freezed,
    Object? beneficiaries = freezed,
  }) {
    return _then(_$DonorDonationImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      donation_type_id: freezed == donation_type_id
          ? _value.donation_type_id
          : donation_type_id // ignore: cast_nullable_to_non_nullable
              as int?,
      donation_status_id: freezed == donation_status_id
          ? _value.donation_status_id
          : donation_status_id // ignore: cast_nullable_to_non_nullable
              as int?,
      payment_method_id: freezed == payment_method_id
          ? _value.payment_method_id
          : payment_method_id // ignore: cast_nullable_to_non_nullable
              as int?,
      donor_id: freezed == donor_id
          ? _value.donor_id
          : donor_id // ignore: cast_nullable_to_non_nullable
              as int?,
      mou_id: freezed == mou_id
          ? _value.mou_id
          : mou_id // ignore: cast_nullable_to_non_nullable
              as int?,
      start_date: freezed == start_date
          ? _value.start_date
          : start_date // ignore: cast_nullable_to_non_nullable
              as String?,
      end_date: freezed == end_date
          ? _value.end_date
          : end_date // ignore: cast_nullable_to_non_nullable
              as String?,
      is_recurring: freezed == is_recurring
          ? _value.is_recurring
          : is_recurring // ignore: cast_nullable_to_non_nullable
              as int?,
      total_amount: freezed == total_amount
          ? _value.total_amount
          : total_amount // ignore: cast_nullable_to_non_nullable
              as num?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
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
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as DonationType?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
      payment_method: freezed == payment_method
          ? _value.payment_method
          : payment_method // ignore: cast_nullable_to_non_nullable
              as PaymentMethodModel?,
      payments: freezed == payments
          ? _value._payments
          : payments // ignore: cast_nullable_to_non_nullable
              as List<PaymentModel>?,
      beneficiaries: freezed == beneficiaries
          ? _value._beneficiaries
          : beneficiaries // ignore: cast_nullable_to_non_nullable
              as List<DonorBeneficiaryModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DonorDonationImpl extends _DonorDonation {
  const _$DonorDonationImpl(
      {this.id,
      this.donation_type_id,
      this.donation_status_id,
      this.payment_method_id,
      this.donor_id,
      this.mou_id,
      this.start_date,
      this.end_date,
      this.is_recurring,
      this.total_amount,
      this.location,
      this.notes,
      this.created_at,
      this.updated_at,
      this.deleted_at,
      this.type,
      this.status,
      this.payment_method,
      final List<PaymentModel>? payments,
      final List<DonorBeneficiaryModel>? beneficiaries})
      : _payments = payments,
        _beneficiaries = beneficiaries,
        super._();

  factory _$DonorDonationImpl.fromJson(Map<String, dynamic> json) =>
      _$$DonorDonationImplFromJson(json);

  @override
  final int? id;
  @override
  final int? donation_type_id;
  @override
  final int? donation_status_id;
  @override
  final int? payment_method_id;
  @override
  final int? donor_id;
  @override
  final int? mou_id;
  @override
  final String? start_date;
  @override
  final String? end_date;
  @override
  final int? is_recurring;
  @override
  final num? total_amount;
  @override
  final String? location;
  @override
  final String? notes;
  @override
  final String? created_at;
  @override
  final String? updated_at;
  @override
  final String? deleted_at;
  @override
  final DonationType? type;
  @override
  final StatusModel? status;
  @override
  final PaymentMethodModel? payment_method;
  final List<PaymentModel>? _payments;
  @override
  List<PaymentModel>? get payments {
    final value = _payments;
    if (value == null) return null;
    if (_payments is EqualUnmodifiableListView) return _payments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<DonorBeneficiaryModel>? _beneficiaries;
  @override
  List<DonorBeneficiaryModel>? get beneficiaries {
    final value = _beneficiaries;
    if (value == null) return null;
    if (_beneficiaries is EqualUnmodifiableListView) return _beneficiaries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DonorDonation(id: $id, donation_type_id: $donation_type_id, donation_status_id: $donation_status_id, payment_method_id: $payment_method_id, donor_id: $donor_id, mou_id: $mou_id, start_date: $start_date, end_date: $end_date, is_recurring: $is_recurring, total_amount: $total_amount, location: $location, notes: $notes, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at, type: $type, status: $status, payment_method: $payment_method, payments: $payments, beneficiaries: $beneficiaries)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DonorDonationImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.donation_type_id, donation_type_id) ||
                other.donation_type_id == donation_type_id) &&
            (identical(other.donation_status_id, donation_status_id) ||
                other.donation_status_id == donation_status_id) &&
            (identical(other.payment_method_id, payment_method_id) ||
                other.payment_method_id == payment_method_id) &&
            (identical(other.donor_id, donor_id) ||
                other.donor_id == donor_id) &&
            (identical(other.mou_id, mou_id) || other.mou_id == mou_id) &&
            (identical(other.start_date, start_date) ||
                other.start_date == start_date) &&
            (identical(other.end_date, end_date) ||
                other.end_date == end_date) &&
            (identical(other.is_recurring, is_recurring) ||
                other.is_recurring == is_recurring) &&
            (identical(other.total_amount, total_amount) ||
                other.total_amount == total_amount) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.deleted_at, deleted_at) ||
                other.deleted_at == deleted_at) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.payment_method, payment_method) ||
                other.payment_method == payment_method) &&
            const DeepCollectionEquality().equals(other._payments, _payments) &&
            const DeepCollectionEquality()
                .equals(other._beneficiaries, _beneficiaries));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        donation_type_id,
        donation_status_id,
        payment_method_id,
        donor_id,
        mou_id,
        start_date,
        end_date,
        is_recurring,
        total_amount,
        location,
        notes,
        created_at,
        updated_at,
        deleted_at,
        type,
        status,
        payment_method,
        const DeepCollectionEquality().hash(_payments),
        const DeepCollectionEquality().hash(_beneficiaries)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DonorDonationImplCopyWith<_$DonorDonationImpl> get copyWith =>
      __$$DonorDonationImplCopyWithImpl<_$DonorDonationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DonorDonationImplToJson(
      this,
    );
  }
}

abstract class _DonorDonation extends DonorDonation {
  const factory _DonorDonation(
      {final int? id,
      final int? donation_type_id,
      final int? donation_status_id,
      final int? payment_method_id,
      final int? donor_id,
      final int? mou_id,
      final String? start_date,
      final String? end_date,
      final int? is_recurring,
      final num? total_amount,
      final String? location,
      final String? notes,
      final String? created_at,
      final String? updated_at,
      final String? deleted_at,
      final DonationType? type,
      final StatusModel? status,
      final PaymentMethodModel? payment_method,
      final List<PaymentModel>? payments,
      final List<DonorBeneficiaryModel>? beneficiaries}) = _$DonorDonationImpl;
  const _DonorDonation._() : super._();

  factory _DonorDonation.fromJson(Map<String, dynamic> json) =
      _$DonorDonationImpl.fromJson;

  @override
  int? get id;
  @override
  int? get donation_type_id;
  @override
  int? get donation_status_id;
  @override
  int? get payment_method_id;
  @override
  int? get donor_id;
  @override
  int? get mou_id;
  @override
  String? get start_date;
  @override
  String? get end_date;
  @override
  int? get is_recurring;
  @override
  num? get total_amount;
  @override
  String? get location;
  @override
  String? get notes;
  @override
  String? get created_at;
  @override
  String? get updated_at;
  @override
  String? get deleted_at;
  @override
  DonationType? get type;
  @override
  StatusModel? get status;
  @override
  PaymentMethodModel? get payment_method;
  @override
  List<PaymentModel>? get payments;
  @override
  List<DonorBeneficiaryModel>? get beneficiaries;
  @override
  @JsonKey(ignore: true)
  _$$DonorDonationImplCopyWith<_$DonorDonationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
