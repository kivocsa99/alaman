// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'avatar.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AvatarModel _$AvatarModelFromJson(Map<String, dynamic> json) {
  return _AvatarModel.fromJson(json);
}

/// @nodoc
mixin _$AvatarModel {
  String? get id => throw _privateConstructorUsedError;
  String? get filename => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  String? get updated_at => throw _privateConstructorUsedError;
  String? get deleted_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AvatarModelCopyWith<AvatarModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvatarModelCopyWith<$Res> {
  factory $AvatarModelCopyWith(
          AvatarModel value, $Res Function(AvatarModel) then) =
      _$AvatarModelCopyWithImpl<$Res, AvatarModel>;
  @useResult
  $Res call(
      {String? id,
      String? filename,
      String? created_at,
      String? updated_at,
      String? deleted_at});
}

/// @nodoc
class _$AvatarModelCopyWithImpl<$Res, $Val extends AvatarModel>
    implements $AvatarModelCopyWith<$Res> {
  _$AvatarModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? filename = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      filename: freezed == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
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
abstract class _$$AvatarModelImplCopyWith<$Res>
    implements $AvatarModelCopyWith<$Res> {
  factory _$$AvatarModelImplCopyWith(
          _$AvatarModelImpl value, $Res Function(_$AvatarModelImpl) then) =
      __$$AvatarModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? filename,
      String? created_at,
      String? updated_at,
      String? deleted_at});
}

/// @nodoc
class __$$AvatarModelImplCopyWithImpl<$Res>
    extends _$AvatarModelCopyWithImpl<$Res, _$AvatarModelImpl>
    implements _$$AvatarModelImplCopyWith<$Res> {
  __$$AvatarModelImplCopyWithImpl(
      _$AvatarModelImpl _value, $Res Function(_$AvatarModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? filename = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
  }) {
    return _then(_$AvatarModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      filename: freezed == filename
          ? _value.filename
          : filename // ignore: cast_nullable_to_non_nullable
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
class _$AvatarModelImpl extends _AvatarModel {
  const _$AvatarModelImpl(
      {this.id,
      this.filename,
      this.created_at,
      this.updated_at,
      this.deleted_at})
      : super._();

  factory _$AvatarModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AvatarModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? filename;
  @override
  final String? created_at;
  @override
  final String? updated_at;
  @override
  final String? deleted_at;

  @override
  String toString() {
    return 'AvatarModel(id: $id, filename: $filename, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvatarModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.filename, filename) ||
                other.filename == filename) &&
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
      runtimeType, id, filename, created_at, updated_at, deleted_at);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AvatarModelImplCopyWith<_$AvatarModelImpl> get copyWith =>
      __$$AvatarModelImplCopyWithImpl<_$AvatarModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AvatarModelImplToJson(
      this,
    );
  }
}

abstract class _AvatarModel extends AvatarModel {
  const factory _AvatarModel(
      {final String? id,
      final String? filename,
      final String? created_at,
      final String? updated_at,
      final String? deleted_at}) = _$AvatarModelImpl;
  const _AvatarModel._() : super._();

  factory _AvatarModel.fromJson(Map<String, dynamic> json) =
      _$AvatarModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get filename;
  @override
  String? get created_at;
  @override
  String? get updated_at;
  @override
  String? get deleted_at;
  @override
  @JsonKey(ignore: true)
  _$$AvatarModelImplCopyWith<_$AvatarModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
