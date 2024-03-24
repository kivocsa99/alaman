// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'donor.beneficiary.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DonorBeneficiaryModel _$DonorBeneficiaryModelFromJson(
    Map<String, dynamic> json) {
  return _DonorBeneficiaryModel.fromJson(json);
}

/// @nodoc
mixin _$DonorBeneficiaryModel {
  int? get id => throw _privateConstructorUsedError;
  int? get donation_id => throw _privateConstructorUsedError;
  int? get donor_id => throw _privateConstructorUsedError;
  int? get beneficiary_id => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  String? get updated_at => throw _privateConstructorUsedError;
  String? get deleted_at => throw _privateConstructorUsedError;
  BeneficiaryModel? get beneficiary => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DonorBeneficiaryModelCopyWith<DonorBeneficiaryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DonorBeneficiaryModelCopyWith<$Res> {
  factory $DonorBeneficiaryModelCopyWith(DonorBeneficiaryModel value,
          $Res Function(DonorBeneficiaryModel) then) =
      _$DonorBeneficiaryModelCopyWithImpl<$Res, DonorBeneficiaryModel>;
  @useResult
  $Res call(
      {int? id,
      int? donation_id,
      int? donor_id,
      int? beneficiary_id,
      String? created_at,
      String? updated_at,
      String? deleted_at,
      BeneficiaryModel? beneficiary});

  $BeneficiaryModelCopyWith<$Res>? get beneficiary;
}

/// @nodoc
class _$DonorBeneficiaryModelCopyWithImpl<$Res,
        $Val extends DonorBeneficiaryModel>
    implements $DonorBeneficiaryModelCopyWith<$Res> {
  _$DonorBeneficiaryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? donation_id = freezed,
    Object? donor_id = freezed,
    Object? beneficiary_id = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
    Object? beneficiary = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      donation_id: freezed == donation_id
          ? _value.donation_id
          : donation_id // ignore: cast_nullable_to_non_nullable
              as int?,
      donor_id: freezed == donor_id
          ? _value.donor_id
          : donor_id // ignore: cast_nullable_to_non_nullable
              as int?,
      beneficiary_id: freezed == beneficiary_id
          ? _value.beneficiary_id
          : beneficiary_id // ignore: cast_nullable_to_non_nullable
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
      beneficiary: freezed == beneficiary
          ? _value.beneficiary
          : beneficiary // ignore: cast_nullable_to_non_nullable
              as BeneficiaryModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BeneficiaryModelCopyWith<$Res>? get beneficiary {
    if (_value.beneficiary == null) {
      return null;
    }

    return $BeneficiaryModelCopyWith<$Res>(_value.beneficiary!, (value) {
      return _then(_value.copyWith(beneficiary: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DonorBeneficiaryModelImplCopyWith<$Res>
    implements $DonorBeneficiaryModelCopyWith<$Res> {
  factory _$$DonorBeneficiaryModelImplCopyWith(
          _$DonorBeneficiaryModelImpl value,
          $Res Function(_$DonorBeneficiaryModelImpl) then) =
      __$$DonorBeneficiaryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? donation_id,
      int? donor_id,
      int? beneficiary_id,
      String? created_at,
      String? updated_at,
      String? deleted_at,
      BeneficiaryModel? beneficiary});

  @override
  $BeneficiaryModelCopyWith<$Res>? get beneficiary;
}

/// @nodoc
class __$$DonorBeneficiaryModelImplCopyWithImpl<$Res>
    extends _$DonorBeneficiaryModelCopyWithImpl<$Res,
        _$DonorBeneficiaryModelImpl>
    implements _$$DonorBeneficiaryModelImplCopyWith<$Res> {
  __$$DonorBeneficiaryModelImplCopyWithImpl(_$DonorBeneficiaryModelImpl _value,
      $Res Function(_$DonorBeneficiaryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? donation_id = freezed,
    Object? donor_id = freezed,
    Object? beneficiary_id = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
    Object? beneficiary = freezed,
  }) {
    return _then(_$DonorBeneficiaryModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      donation_id: freezed == donation_id
          ? _value.donation_id
          : donation_id // ignore: cast_nullable_to_non_nullable
              as int?,
      donor_id: freezed == donor_id
          ? _value.donor_id
          : donor_id // ignore: cast_nullable_to_non_nullable
              as int?,
      beneficiary_id: freezed == beneficiary_id
          ? _value.beneficiary_id
          : beneficiary_id // ignore: cast_nullable_to_non_nullable
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
      beneficiary: freezed == beneficiary
          ? _value.beneficiary
          : beneficiary // ignore: cast_nullable_to_non_nullable
              as BeneficiaryModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DonorBeneficiaryModelImpl extends _DonorBeneficiaryModel {
  const _$DonorBeneficiaryModelImpl(
      {this.id,
      this.donation_id,
      this.donor_id,
      this.beneficiary_id,
      this.created_at,
      this.updated_at,
      this.deleted_at,
      this.beneficiary})
      : super._();

  factory _$DonorBeneficiaryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DonorBeneficiaryModelImplFromJson(json);

  @override
  final int? id;
  @override
  final int? donation_id;
  @override
  final int? donor_id;
  @override
  final int? beneficiary_id;
  @override
  final String? created_at;
  @override
  final String? updated_at;
  @override
  final String? deleted_at;
  @override
  final BeneficiaryModel? beneficiary;

  @override
  String toString() {
    return 'DonorBeneficiaryModel(id: $id, donation_id: $donation_id, donor_id: $donor_id, beneficiary_id: $beneficiary_id, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at, beneficiary: $beneficiary)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DonorBeneficiaryModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.donation_id, donation_id) ||
                other.donation_id == donation_id) &&
            (identical(other.donor_id, donor_id) ||
                other.donor_id == donor_id) &&
            (identical(other.beneficiary_id, beneficiary_id) ||
                other.beneficiary_id == beneficiary_id) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.deleted_at, deleted_at) ||
                other.deleted_at == deleted_at) &&
            (identical(other.beneficiary, beneficiary) ||
                other.beneficiary == beneficiary));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, donation_id, donor_id,
      beneficiary_id, created_at, updated_at, deleted_at, beneficiary);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DonorBeneficiaryModelImplCopyWith<_$DonorBeneficiaryModelImpl>
      get copyWith => __$$DonorBeneficiaryModelImplCopyWithImpl<
          _$DonorBeneficiaryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DonorBeneficiaryModelImplToJson(
      this,
    );
  }
}

abstract class _DonorBeneficiaryModel extends DonorBeneficiaryModel {
  const factory _DonorBeneficiaryModel(
      {final int? id,
      final int? donation_id,
      final int? donor_id,
      final int? beneficiary_id,
      final String? created_at,
      final String? updated_at,
      final String? deleted_at,
      final BeneficiaryModel? beneficiary}) = _$DonorBeneficiaryModelImpl;
  const _DonorBeneficiaryModel._() : super._();

  factory _DonorBeneficiaryModel.fromJson(Map<String, dynamic> json) =
      _$DonorBeneficiaryModelImpl.fromJson;

  @override
  int? get id;
  @override
  int? get donation_id;
  @override
  int? get donor_id;
  @override
  int? get beneficiary_id;
  @override
  String? get created_at;
  @override
  String? get updated_at;
  @override
  String? get deleted_at;
  @override
  BeneficiaryModel? get beneficiary;
  @override
  @JsonKey(ignore: true)
  _$$DonorBeneficiaryModelImplCopyWith<_$DonorBeneficiaryModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
