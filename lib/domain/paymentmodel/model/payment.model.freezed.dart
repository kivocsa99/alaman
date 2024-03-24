// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PaymentModel _$PaymentModelFromJson(Map<String, dynamic> json) {
  return _PaymentModel.fromJson(json);
}

/// @nodoc
mixin _$PaymentModel {
  int? get id => throw _privateConstructorUsedError;
  int? get mou_id => throw _privateConstructorUsedError;
  int? get donation_id => throw _privateConstructorUsedError;
  int? get donor_id => throw _privateConstructorUsedError;
  int? get payment_status_id => throw _privateConstructorUsedError;
  int? get due_date => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  num? get amount => throw _privateConstructorUsedError;
  String? get provider_ref => throw _privateConstructorUsedError;
  String? get provider_callback => throw _privateConstructorUsedError;
  int? get is_success => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  String? get updated_at => throw _privateConstructorUsedError;
  String? get deleted_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentModelCopyWith<PaymentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentModelCopyWith<$Res> {
  factory $PaymentModelCopyWith(
          PaymentModel value, $Res Function(PaymentModel) then) =
      _$PaymentModelCopyWithImpl<$Res, PaymentModel>;
  @useResult
  $Res call(
      {int? id,
      int? mou_id,
      int? donation_id,
      int? donor_id,
      int? payment_status_id,
      int? due_date,
      String? name,
      String? email,
      num? amount,
      String? provider_ref,
      String? provider_callback,
      int? is_success,
      String? created_at,
      String? updated_at,
      String? deleted_at});
}

/// @nodoc
class _$PaymentModelCopyWithImpl<$Res, $Val extends PaymentModel>
    implements $PaymentModelCopyWith<$Res> {
  _$PaymentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? mou_id = freezed,
    Object? donation_id = freezed,
    Object? donor_id = freezed,
    Object? payment_status_id = freezed,
    Object? due_date = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? amount = freezed,
    Object? provider_ref = freezed,
    Object? provider_callback = freezed,
    Object? is_success = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      mou_id: freezed == mou_id
          ? _value.mou_id
          : mou_id // ignore: cast_nullable_to_non_nullable
              as int?,
      donation_id: freezed == donation_id
          ? _value.donation_id
          : donation_id // ignore: cast_nullable_to_non_nullable
              as int?,
      donor_id: freezed == donor_id
          ? _value.donor_id
          : donor_id // ignore: cast_nullable_to_non_nullable
              as int?,
      payment_status_id: freezed == payment_status_id
          ? _value.payment_status_id
          : payment_status_id // ignore: cast_nullable_to_non_nullable
              as int?,
      due_date: freezed == due_date
          ? _value.due_date
          : due_date // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num?,
      provider_ref: freezed == provider_ref
          ? _value.provider_ref
          : provider_ref // ignore: cast_nullable_to_non_nullable
              as String?,
      provider_callback: freezed == provider_callback
          ? _value.provider_callback
          : provider_callback // ignore: cast_nullable_to_non_nullable
              as String?,
      is_success: freezed == is_success
          ? _value.is_success
          : is_success // ignore: cast_nullable_to_non_nullable
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaymentModelImplCopyWith<$Res>
    implements $PaymentModelCopyWith<$Res> {
  factory _$$PaymentModelImplCopyWith(
          _$PaymentModelImpl value, $Res Function(_$PaymentModelImpl) then) =
      __$$PaymentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? mou_id,
      int? donation_id,
      int? donor_id,
      int? payment_status_id,
      int? due_date,
      String? name,
      String? email,
      num? amount,
      String? provider_ref,
      String? provider_callback,
      int? is_success,
      String? created_at,
      String? updated_at,
      String? deleted_at});
}

/// @nodoc
class __$$PaymentModelImplCopyWithImpl<$Res>
    extends _$PaymentModelCopyWithImpl<$Res, _$PaymentModelImpl>
    implements _$$PaymentModelImplCopyWith<$Res> {
  __$$PaymentModelImplCopyWithImpl(
      _$PaymentModelImpl _value, $Res Function(_$PaymentModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? mou_id = freezed,
    Object? donation_id = freezed,
    Object? donor_id = freezed,
    Object? payment_status_id = freezed,
    Object? due_date = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? amount = freezed,
    Object? provider_ref = freezed,
    Object? provider_callback = freezed,
    Object? is_success = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
  }) {
    return _then(_$PaymentModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      mou_id: freezed == mou_id
          ? _value.mou_id
          : mou_id // ignore: cast_nullable_to_non_nullable
              as int?,
      donation_id: freezed == donation_id
          ? _value.donation_id
          : donation_id // ignore: cast_nullable_to_non_nullable
              as int?,
      donor_id: freezed == donor_id
          ? _value.donor_id
          : donor_id // ignore: cast_nullable_to_non_nullable
              as int?,
      payment_status_id: freezed == payment_status_id
          ? _value.payment_status_id
          : payment_status_id // ignore: cast_nullable_to_non_nullable
              as int?,
      due_date: freezed == due_date
          ? _value.due_date
          : due_date // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num?,
      provider_ref: freezed == provider_ref
          ? _value.provider_ref
          : provider_ref // ignore: cast_nullable_to_non_nullable
              as String?,
      provider_callback: freezed == provider_callback
          ? _value.provider_callback
          : provider_callback // ignore: cast_nullable_to_non_nullable
              as String?,
      is_success: freezed == is_success
          ? _value.is_success
          : is_success // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaymentModelImpl extends _PaymentModel {
  const _$PaymentModelImpl(
      {this.id,
      this.mou_id,
      this.donation_id,
      this.donor_id,
      this.payment_status_id,
      this.due_date,
      this.name,
      this.email,
      this.amount,
      this.provider_ref,
      this.provider_callback,
      this.is_success,
      this.created_at,
      this.updated_at,
      this.deleted_at})
      : super._();

  factory _$PaymentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaymentModelImplFromJson(json);

  @override
  final int? id;
  @override
  final int? mou_id;
  @override
  final int? donation_id;
  @override
  final int? donor_id;
  @override
  final int? payment_status_id;
  @override
  final int? due_date;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final num? amount;
  @override
  final String? provider_ref;
  @override
  final String? provider_callback;
  @override
  final int? is_success;
  @override
  final String? created_at;
  @override
  final String? updated_at;
  @override
  final String? deleted_at;

  @override
  String toString() {
    return 'PaymentModel(id: $id, mou_id: $mou_id, donation_id: $donation_id, donor_id: $donor_id, payment_status_id: $payment_status_id, due_date: $due_date, name: $name, email: $email, amount: $amount, provider_ref: $provider_ref, provider_callback: $provider_callback, is_success: $is_success, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaymentModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.mou_id, mou_id) || other.mou_id == mou_id) &&
            (identical(other.donation_id, donation_id) ||
                other.donation_id == donation_id) &&
            (identical(other.donor_id, donor_id) ||
                other.donor_id == donor_id) &&
            (identical(other.payment_status_id, payment_status_id) ||
                other.payment_status_id == payment_status_id) &&
            (identical(other.due_date, due_date) ||
                other.due_date == due_date) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.provider_ref, provider_ref) ||
                other.provider_ref == provider_ref) &&
            (identical(other.provider_callback, provider_callback) ||
                other.provider_callback == provider_callback) &&
            (identical(other.is_success, is_success) ||
                other.is_success == is_success) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.deleted_at, deleted_at) ||
                other.deleted_at == deleted_at));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      mou_id,
      donation_id,
      donor_id,
      payment_status_id,
      due_date,
      name,
      email,
      amount,
      provider_ref,
      provider_callback,
      is_success,
      created_at,
      updated_at,
      deleted_at);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaymentModelImplCopyWith<_$PaymentModelImpl> get copyWith =>
      __$$PaymentModelImplCopyWithImpl<_$PaymentModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaymentModelImplToJson(
      this,
    );
  }
}

abstract class _PaymentModel extends PaymentModel {
  const factory _PaymentModel(
      {final int? id,
      final int? mou_id,
      final int? donation_id,
      final int? donor_id,
      final int? payment_status_id,
      final int? due_date,
      final String? name,
      final String? email,
      final num? amount,
      final String? provider_ref,
      final String? provider_callback,
      final int? is_success,
      final String? created_at,
      final String? updated_at,
      final String? deleted_at}) = _$PaymentModelImpl;
  const _PaymentModel._() : super._();

  factory _PaymentModel.fromJson(Map<String, dynamic> json) =
      _$PaymentModelImpl.fromJson;

  @override
  int? get id;
  @override
  int? get mou_id;
  @override
  int? get donation_id;
  @override
  int? get donor_id;
  @override
  int? get payment_status_id;
  @override
  int? get due_date;
  @override
  String? get name;
  @override
  String? get email;
  @override
  num? get amount;
  @override
  String? get provider_ref;
  @override
  String? get provider_callback;
  @override
  int? get is_success;
  @override
  String? get created_at;
  @override
  String? get updated_at;
  @override
  String? get deleted_at;
  @override
  @JsonKey(ignore: true)
  _$$PaymentModelImplCopyWith<_$PaymentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
