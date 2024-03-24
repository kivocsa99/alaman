// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'donation.frequency.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DonationFrequencyModel _$DonationFrequencyModelFromJson(
    Map<String, dynamic> json) {
  return _DonationFrequencyModel.fromJson(json);
}

/// @nodoc
mixin _$DonationFrequencyModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get name_ar => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  String? get updated_at => throw _privateConstructorUsedError;
  String? get deleted_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DonationFrequencyModelCopyWith<DonationFrequencyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DonationFrequencyModelCopyWith<$Res> {
  factory $DonationFrequencyModelCopyWith(DonationFrequencyModel value,
          $Res Function(DonationFrequencyModel) then) =
      _$DonationFrequencyModelCopyWithImpl<$Res, DonationFrequencyModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? name_ar,
      String? value,
      String? created_at,
      String? updated_at,
      String? deleted_at});
}

/// @nodoc
class _$DonationFrequencyModelCopyWithImpl<$Res,
        $Val extends DonationFrequencyModel>
    implements $DonationFrequencyModelCopyWith<$Res> {
  _$DonationFrequencyModelCopyWithImpl(this._value, this._then);

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
    Object? value = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
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
      name_ar: freezed == name_ar
          ? _value.name_ar
          : name_ar // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DonationFrequencyModelImplCopyWith<$Res>
    implements $DonationFrequencyModelCopyWith<$Res> {
  factory _$$DonationFrequencyModelImplCopyWith(
          _$DonationFrequencyModelImpl value,
          $Res Function(_$DonationFrequencyModelImpl) then) =
      __$$DonationFrequencyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? name_ar,
      String? value,
      String? created_at,
      String? updated_at,
      String? deleted_at});
}

/// @nodoc
class __$$DonationFrequencyModelImplCopyWithImpl<$Res>
    extends _$DonationFrequencyModelCopyWithImpl<$Res,
        _$DonationFrequencyModelImpl>
    implements _$$DonationFrequencyModelImplCopyWith<$Res> {
  __$$DonationFrequencyModelImplCopyWithImpl(
      _$DonationFrequencyModelImpl _value,
      $Res Function(_$DonationFrequencyModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? name_ar = freezed,
    Object? value = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
  }) {
    return _then(_$DonationFrequencyModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      name_ar: freezed == name_ar
          ? _value.name_ar
          : name_ar // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DonationFrequencyModelImpl extends _DonationFrequencyModel {
  const _$DonationFrequencyModelImpl(
      {this.id,
      this.name,
      this.name_ar,
      this.value,
      this.created_at,
      this.updated_at,
      this.deleted_at})
      : super._();

  factory _$DonationFrequencyModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DonationFrequencyModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? name_ar;
  @override
  final String? value;
  @override
  final String? created_at;
  @override
  final String? updated_at;
  @override
  final String? deleted_at;

  @override
  String toString() {
    return 'DonationFrequencyModel(id: $id, name: $name, name_ar: $name_ar, value: $value, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DonationFrequencyModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.name_ar, name_ar) || other.name_ar == name_ar) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.deleted_at, deleted_at) ||
                other.deleted_at == deleted_at));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, name_ar, value,
      created_at, updated_at, deleted_at);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DonationFrequencyModelImplCopyWith<_$DonationFrequencyModelImpl>
      get copyWith => __$$DonationFrequencyModelImplCopyWithImpl<
          _$DonationFrequencyModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DonationFrequencyModelImplToJson(
      this,
    );
  }
}

abstract class _DonationFrequencyModel extends DonationFrequencyModel {
  const factory _DonationFrequencyModel(
      {final int? id,
      final String? name,
      final String? name_ar,
      final String? value,
      final String? created_at,
      final String? updated_at,
      final String? deleted_at}) = _$DonationFrequencyModelImpl;
  const _DonationFrequencyModel._() : super._();

  factory _DonationFrequencyModel.fromJson(Map<String, dynamic> json) =
      _$DonationFrequencyModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get name_ar;
  @override
  String? get value;
  @override
  String? get created_at;
  @override
  String? get updated_at;
  @override
  String? get deleted_at;
  @override
  @JsonKey(ignore: true)
  _$$DonationFrequencyModelImplCopyWith<_$DonationFrequencyModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
