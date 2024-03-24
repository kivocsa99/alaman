// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'educationalyear.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EducationalYearModel _$EducationalYearModelFromJson(Map<String, dynamic> json) {
  return _EducationalYearModel.fromJson(json);
}

/// @nodoc
mixin _$EducationalYearModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get name_ar => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  String? get updated_at => throw _privateConstructorUsedError;
  String? get deleted_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EducationalYearModelCopyWith<EducationalYearModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EducationalYearModelCopyWith<$Res> {
  factory $EducationalYearModelCopyWith(EducationalYearModel value,
          $Res Function(EducationalYearModel) then) =
      _$EducationalYearModelCopyWithImpl<$Res, EducationalYearModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? name_ar,
      String? created_at,
      String? updated_at,
      String? deleted_at});
}

/// @nodoc
class _$EducationalYearModelCopyWithImpl<$Res,
        $Val extends EducationalYearModel>
    implements $EducationalYearModelCopyWith<$Res> {
  _$EducationalYearModelCopyWithImpl(this._value, this._then);

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
abstract class _$$EducationalYearModelImplCopyWith<$Res>
    implements $EducationalYearModelCopyWith<$Res> {
  factory _$$EducationalYearModelImplCopyWith(_$EducationalYearModelImpl value,
          $Res Function(_$EducationalYearModelImpl) then) =
      __$$EducationalYearModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? name_ar,
      String? created_at,
      String? updated_at,
      String? deleted_at});
}

/// @nodoc
class __$$EducationalYearModelImplCopyWithImpl<$Res>
    extends _$EducationalYearModelCopyWithImpl<$Res, _$EducationalYearModelImpl>
    implements _$$EducationalYearModelImplCopyWith<$Res> {
  __$$EducationalYearModelImplCopyWithImpl(_$EducationalYearModelImpl _value,
      $Res Function(_$EducationalYearModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? name_ar = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
  }) {
    return _then(_$EducationalYearModelImpl(
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
class _$EducationalYearModelImpl extends _EducationalYearModel {
  const _$EducationalYearModelImpl(
      {this.id,
      this.name,
      this.name_ar,
      this.created_at,
      this.updated_at,
      this.deleted_at})
      : super._();

  factory _$EducationalYearModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EducationalYearModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? name_ar;
  @override
  final String? created_at;
  @override
  final String? updated_at;
  @override
  final String? deleted_at;

  @override
  String toString() {
    return 'EducationalYearModel(id: $id, name: $name, name_ar: $name_ar, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EducationalYearModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.name_ar, name_ar) || other.name_ar == name_ar) &&
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
      runtimeType, id, name, name_ar, created_at, updated_at, deleted_at);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EducationalYearModelImplCopyWith<_$EducationalYearModelImpl>
      get copyWith =>
          __$$EducationalYearModelImplCopyWithImpl<_$EducationalYearModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EducationalYearModelImplToJson(
      this,
    );
  }
}

abstract class _EducationalYearModel extends EducationalYearModel {
  const factory _EducationalYearModel(
      {final int? id,
      final String? name,
      final String? name_ar,
      final String? created_at,
      final String? updated_at,
      final String? deleted_at}) = _$EducationalYearModelImpl;
  const _EducationalYearModel._() : super._();

  factory _EducationalYearModel.fromJson(Map<String, dynamic> json) =
      _$EducationalYearModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get name_ar;
  @override
  String? get created_at;
  @override
  String? get updated_at;
  @override
  String? get deleted_at;
  @override
  @JsonKey(ignore: true)
  _$$EducationalYearModelImplCopyWith<_$EducationalYearModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
