// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tax.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TaxModel _$TaxModelFromJson(Map<String, dynamic> json) {
  return _TaxModel.fromJson(json);
}

/// @nodoc
mixin _$TaxModel {
  int? get id => throw _privateConstructorUsedError;
  int? get donor_id => throw _privateConstructorUsedError;
  int? get user_id => throw _privateConstructorUsedError;
  int? get tax_exemption_status_id => throw _privateConstructorUsedError;
  int? get year => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String? get file => throw _privateConstructorUsedError;
  StatusModel? get status => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  String? get updated_at => throw _privateConstructorUsedError;
  String? get deleted_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaxModelCopyWith<TaxModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaxModelCopyWith<$Res> {
  factory $TaxModelCopyWith(TaxModel value, $Res Function(TaxModel) then) =
      _$TaxModelCopyWithImpl<$Res, TaxModel>;
  @useResult
  $Res call(
      {int? id,
      int? donor_id,
      int? user_id,
      int? tax_exemption_status_id,
      int? year,
      String? notes,
      String? file,
      StatusModel? status,
      String? created_at,
      String? updated_at,
      String? deleted_at});

  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class _$TaxModelCopyWithImpl<$Res, $Val extends TaxModel>
    implements $TaxModelCopyWith<$Res> {
  _$TaxModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? donor_id = freezed,
    Object? user_id = freezed,
    Object? tax_exemption_status_id = freezed,
    Object? year = freezed,
    Object? notes = freezed,
    Object? file = freezed,
    Object? status = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      donor_id: freezed == donor_id
          ? _value.donor_id
          : donor_id // ignore: cast_nullable_to_non_nullable
              as int?,
      user_id: freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int?,
      tax_exemption_status_id: freezed == tax_exemption_status_id
          ? _value.tax_exemption_status_id
          : tax_exemption_status_id // ignore: cast_nullable_to_non_nullable
              as int?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
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
}

/// @nodoc
abstract class _$$TaxModelImplCopyWith<$Res>
    implements $TaxModelCopyWith<$Res> {
  factory _$$TaxModelImplCopyWith(
          _$TaxModelImpl value, $Res Function(_$TaxModelImpl) then) =
      __$$TaxModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? donor_id,
      int? user_id,
      int? tax_exemption_status_id,
      int? year,
      String? notes,
      String? file,
      StatusModel? status,
      String? created_at,
      String? updated_at,
      String? deleted_at});

  @override
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class __$$TaxModelImplCopyWithImpl<$Res>
    extends _$TaxModelCopyWithImpl<$Res, _$TaxModelImpl>
    implements _$$TaxModelImplCopyWith<$Res> {
  __$$TaxModelImplCopyWithImpl(
      _$TaxModelImpl _value, $Res Function(_$TaxModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? donor_id = freezed,
    Object? user_id = freezed,
    Object? tax_exemption_status_id = freezed,
    Object? year = freezed,
    Object? notes = freezed,
    Object? file = freezed,
    Object? status = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
  }) {
    return _then(_$TaxModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      donor_id: freezed == donor_id
          ? _value.donor_id
          : donor_id // ignore: cast_nullable_to_non_nullable
              as int?,
      user_id: freezed == user_id
          ? _value.user_id
          : user_id // ignore: cast_nullable_to_non_nullable
              as int?,
      tax_exemption_status_id: freezed == tax_exemption_status_id
          ? _value.tax_exemption_status_id
          : tax_exemption_status_id // ignore: cast_nullable_to_non_nullable
              as int?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
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
class _$TaxModelImpl extends _TaxModel {
  const _$TaxModelImpl(
      {this.id,
      this.donor_id,
      this.user_id,
      this.tax_exemption_status_id,
      this.year,
      this.notes,
      this.file,
      this.status,
      this.created_at,
      this.updated_at,
      this.deleted_at})
      : super._();

  factory _$TaxModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaxModelImplFromJson(json);

  @override
  final int? id;
  @override
  final int? donor_id;
  @override
  final int? user_id;
  @override
  final int? tax_exemption_status_id;
  @override
  final int? year;
  @override
  final String? notes;
  @override
  final String? file;
  @override
  final StatusModel? status;
  @override
  final String? created_at;
  @override
  final String? updated_at;
  @override
  final String? deleted_at;

  @override
  String toString() {
    return 'TaxModel(id: $id, donor_id: $donor_id, user_id: $user_id, tax_exemption_status_id: $tax_exemption_status_id, year: $year, notes: $notes, file: $file, status: $status, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaxModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.donor_id, donor_id) ||
                other.donor_id == donor_id) &&
            (identical(other.user_id, user_id) || other.user_id == user_id) &&
            (identical(
                    other.tax_exemption_status_id, tax_exemption_status_id) ||
                other.tax_exemption_status_id == tax_exemption_status_id) &&
            (identical(other.year, year) || other.year == year) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.file, file) || other.file == file) &&
            (identical(other.status, status) || other.status == status) &&
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
      donor_id,
      user_id,
      tax_exemption_status_id,
      year,
      notes,
      file,
      status,
      created_at,
      updated_at,
      deleted_at);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaxModelImplCopyWith<_$TaxModelImpl> get copyWith =>
      __$$TaxModelImplCopyWithImpl<_$TaxModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TaxModelImplToJson(
      this,
    );
  }
}

abstract class _TaxModel extends TaxModel {
  const factory _TaxModel(
      {final int? id,
      final int? donor_id,
      final int? user_id,
      final int? tax_exemption_status_id,
      final int? year,
      final String? notes,
      final String? file,
      final StatusModel? status,
      final String? created_at,
      final String? updated_at,
      final String? deleted_at}) = _$TaxModelImpl;
  const _TaxModel._() : super._();

  factory _TaxModel.fromJson(Map<String, dynamic> json) =
      _$TaxModelImpl.fromJson;

  @override
  int? get id;
  @override
  int? get donor_id;
  @override
  int? get user_id;
  @override
  int? get tax_exemption_status_id;
  @override
  int? get year;
  @override
  String? get notes;
  @override
  String? get file;
  @override
  StatusModel? get status;
  @override
  String? get created_at;
  @override
  String? get updated_at;
  @override
  String? get deleted_at;
  @override
  @JsonKey(ignore: true)
  _$$TaxModelImplCopyWith<_$TaxModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
