// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alamanservices.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AlamanServicesModel _$AlamanServicesModelFromJson(Map<String, dynamic> json) {
  return _AlamanServicesModel.fromJson(json);
}

/// @nodoc
mixin _$AlamanServicesModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get name_ar => throw _privateConstructorUsedError;
  int? get active => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  String? get updated_at => throw _privateConstructorUsedError;
  String? get deleted_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlamanServicesModelCopyWith<AlamanServicesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlamanServicesModelCopyWith<$Res> {
  factory $AlamanServicesModelCopyWith(
          AlamanServicesModel value, $Res Function(AlamanServicesModel) then) =
      _$AlamanServicesModelCopyWithImpl<$Res, AlamanServicesModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? name_ar,
      int? active,
      String? created_at,
      String? updated_at,
      String? deleted_at});
}

/// @nodoc
class _$AlamanServicesModelCopyWithImpl<$Res, $Val extends AlamanServicesModel>
    implements $AlamanServicesModelCopyWith<$Res> {
  _$AlamanServicesModelCopyWithImpl(this._value, this._then);

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
    Object? active = freezed,
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
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
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
abstract class _$$AlamanServicesModelImplCopyWith<$Res>
    implements $AlamanServicesModelCopyWith<$Res> {
  factory _$$AlamanServicesModelImplCopyWith(_$AlamanServicesModelImpl value,
          $Res Function(_$AlamanServicesModelImpl) then) =
      __$$AlamanServicesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? name_ar,
      int? active,
      String? created_at,
      String? updated_at,
      String? deleted_at});
}

/// @nodoc
class __$$AlamanServicesModelImplCopyWithImpl<$Res>
    extends _$AlamanServicesModelCopyWithImpl<$Res, _$AlamanServicesModelImpl>
    implements _$$AlamanServicesModelImplCopyWith<$Res> {
  __$$AlamanServicesModelImplCopyWithImpl(_$AlamanServicesModelImpl _value,
      $Res Function(_$AlamanServicesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? name_ar = freezed,
    Object? active = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
  }) {
    return _then(_$AlamanServicesModelImpl(
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
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
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
class _$AlamanServicesModelImpl extends _AlamanServicesModel {
  const _$AlamanServicesModelImpl(
      {this.id,
      this.name,
      this.name_ar,
      this.active,
      this.created_at,
      this.updated_at,
      this.deleted_at})
      : super._();

  factory _$AlamanServicesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlamanServicesModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? name_ar;
  @override
  final int? active;
  @override
  final String? created_at;
  @override
  final String? updated_at;
  @override
  final String? deleted_at;

  @override
  String toString() {
    return 'AlamanServicesModel(id: $id, name: $name, name_ar: $name_ar, active: $active, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlamanServicesModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.name_ar, name_ar) || other.name_ar == name_ar) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.deleted_at, deleted_at) ||
                other.deleted_at == deleted_at));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, name_ar, active,
      created_at, updated_at, deleted_at);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlamanServicesModelImplCopyWith<_$AlamanServicesModelImpl> get copyWith =>
      __$$AlamanServicesModelImplCopyWithImpl<_$AlamanServicesModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlamanServicesModelImplToJson(
      this,
    );
  }
}

abstract class _AlamanServicesModel extends AlamanServicesModel {
  const factory _AlamanServicesModel(
      {final int? id,
      final String? name,
      final String? name_ar,
      final int? active,
      final String? created_at,
      final String? updated_at,
      final String? deleted_at}) = _$AlamanServicesModelImpl;
  const _AlamanServicesModel._() : super._();

  factory _AlamanServicesModel.fromJson(Map<String, dynamic> json) =
      _$AlamanServicesModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get name_ar;
  @override
  int? get active;
  @override
  String? get created_at;
  @override
  String? get updated_at;
  @override
  String? get deleted_at;
  @override
  @JsonKey(ignore: true)
  _$$AlamanServicesModelImplCopyWith<_$AlamanServicesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
