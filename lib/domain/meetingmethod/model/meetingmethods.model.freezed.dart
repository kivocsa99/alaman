// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meetingmethods.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MeetingMethodsModel _$MeetingMethodsModelFromJson(Map<String, dynamic> json) {
  return _MeetingMethodsModel.fromJson(json);
}

/// @nodoc
mixin _$MeetingMethodsModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get name_ar => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  String? get updated_at => throw _privateConstructorUsedError;
  String? get deleted_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeetingMethodsModelCopyWith<MeetingMethodsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeetingMethodsModelCopyWith<$Res> {
  factory $MeetingMethodsModelCopyWith(
          MeetingMethodsModel value, $Res Function(MeetingMethodsModel) then) =
      _$MeetingMethodsModelCopyWithImpl<$Res, MeetingMethodsModel>;
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
class _$MeetingMethodsModelCopyWithImpl<$Res, $Val extends MeetingMethodsModel>
    implements $MeetingMethodsModelCopyWith<$Res> {
  _$MeetingMethodsModelCopyWithImpl(this._value, this._then);

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
abstract class _$$MeetingMethodsModelImplCopyWith<$Res>
    implements $MeetingMethodsModelCopyWith<$Res> {
  factory _$$MeetingMethodsModelImplCopyWith(_$MeetingMethodsModelImpl value,
          $Res Function(_$MeetingMethodsModelImpl) then) =
      __$$MeetingMethodsModelImplCopyWithImpl<$Res>;
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
class __$$MeetingMethodsModelImplCopyWithImpl<$Res>
    extends _$MeetingMethodsModelCopyWithImpl<$Res, _$MeetingMethodsModelImpl>
    implements _$$MeetingMethodsModelImplCopyWith<$Res> {
  __$$MeetingMethodsModelImplCopyWithImpl(_$MeetingMethodsModelImpl _value,
      $Res Function(_$MeetingMethodsModelImpl) _then)
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
    return _then(_$MeetingMethodsModelImpl(
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
class _$MeetingMethodsModelImpl extends _MeetingMethodsModel {
  const _$MeetingMethodsModelImpl(
      {this.id,
      this.name,
      this.name_ar,
      this.created_at,
      this.updated_at,
      this.deleted_at})
      : super._();

  factory _$MeetingMethodsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeetingMethodsModelImplFromJson(json);

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
    return 'MeetingMethodsModel(id: $id, name: $name, name_ar: $name_ar, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeetingMethodsModelImpl &&
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
  _$$MeetingMethodsModelImplCopyWith<_$MeetingMethodsModelImpl> get copyWith =>
      __$$MeetingMethodsModelImplCopyWithImpl<_$MeetingMethodsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeetingMethodsModelImplToJson(
      this,
    );
  }
}

abstract class _MeetingMethodsModel extends MeetingMethodsModel {
  const factory _MeetingMethodsModel(
      {final int? id,
      final String? name,
      final String? name_ar,
      final String? created_at,
      final String? updated_at,
      final String? deleted_at}) = _$MeetingMethodsModelImpl;
  const _MeetingMethodsModel._() : super._();

  factory _MeetingMethodsModel.fromJson(Map<String, dynamic> json) =
      _$MeetingMethodsModelImpl.fromJson;

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
  _$$MeetingMethodsModelImplCopyWith<_$MeetingMethodsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
