// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scholarshiptypes.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ScholarshipTypesModel _$ScholarshipTypesModelFromJson(
    Map<String, dynamic> json) {
  return _ScholarshipTypesModel.fromJson(json);
}

/// @nodoc
mixin _$ScholarshipTypesModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get name_ar => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  String? get updated_at => throw _privateConstructorUsedError;
  String? get deleted_at => throw _privateConstructorUsedError;
  List<StepsModel>? get steps => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScholarshipTypesModelCopyWith<ScholarshipTypesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScholarshipTypesModelCopyWith<$Res> {
  factory $ScholarshipTypesModelCopyWith(ScholarshipTypesModel value,
          $Res Function(ScholarshipTypesModel) then) =
      _$ScholarshipTypesModelCopyWithImpl<$Res, ScholarshipTypesModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? name_ar,
      String? created_at,
      String? updated_at,
      String? deleted_at,
      List<StepsModel>? steps});
}

/// @nodoc
class _$ScholarshipTypesModelCopyWithImpl<$Res,
        $Val extends ScholarshipTypesModel>
    implements $ScholarshipTypesModelCopyWith<$Res> {
  _$ScholarshipTypesModelCopyWithImpl(this._value, this._then);

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
    Object? steps = freezed,
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
      steps: freezed == steps
          ? _value.steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<StepsModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ScholarshipTypesModelImplCopyWith<$Res>
    implements $ScholarshipTypesModelCopyWith<$Res> {
  factory _$$ScholarshipTypesModelImplCopyWith(
          _$ScholarshipTypesModelImpl value,
          $Res Function(_$ScholarshipTypesModelImpl) then) =
      __$$ScholarshipTypesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? name_ar,
      String? created_at,
      String? updated_at,
      String? deleted_at,
      List<StepsModel>? steps});
}

/// @nodoc
class __$$ScholarshipTypesModelImplCopyWithImpl<$Res>
    extends _$ScholarshipTypesModelCopyWithImpl<$Res,
        _$ScholarshipTypesModelImpl>
    implements _$$ScholarshipTypesModelImplCopyWith<$Res> {
  __$$ScholarshipTypesModelImplCopyWithImpl(_$ScholarshipTypesModelImpl _value,
      $Res Function(_$ScholarshipTypesModelImpl) _then)
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
    Object? steps = freezed,
  }) {
    return _then(_$ScholarshipTypesModelImpl(
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
      steps: freezed == steps
          ? _value._steps
          : steps // ignore: cast_nullable_to_non_nullable
              as List<StepsModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ScholarshipTypesModelImpl extends _ScholarshipTypesModel {
  const _$ScholarshipTypesModelImpl(
      {this.id,
      this.name,
      this.name_ar,
      this.created_at,
      this.updated_at,
      this.deleted_at,
      final List<StepsModel>? steps})
      : _steps = steps,
        super._();

  factory _$ScholarshipTypesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ScholarshipTypesModelImplFromJson(json);

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
  final List<StepsModel>? _steps;
  @override
  List<StepsModel>? get steps {
    final value = _steps;
    if (value == null) return null;
    if (_steps is EqualUnmodifiableListView) return _steps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ScholarshipTypesModel(id: $id, name: $name, name_ar: $name_ar, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at, steps: $steps)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ScholarshipTypesModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.name_ar, name_ar) || other.name_ar == name_ar) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.deleted_at, deleted_at) ||
                other.deleted_at == deleted_at) &&
            const DeepCollectionEquality().equals(other._steps, _steps));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, name_ar, created_at,
      updated_at, deleted_at, const DeepCollectionEquality().hash(_steps));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ScholarshipTypesModelImplCopyWith<_$ScholarshipTypesModelImpl>
      get copyWith => __$$ScholarshipTypesModelImplCopyWithImpl<
          _$ScholarshipTypesModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ScholarshipTypesModelImplToJson(
      this,
    );
  }
}

abstract class _ScholarshipTypesModel extends ScholarshipTypesModel {
  const factory _ScholarshipTypesModel(
      {final int? id,
      final String? name,
      final String? name_ar,
      final String? created_at,
      final String? updated_at,
      final String? deleted_at,
      final List<StepsModel>? steps}) = _$ScholarshipTypesModelImpl;
  const _ScholarshipTypesModel._() : super._();

  factory _ScholarshipTypesModel.fromJson(Map<String, dynamic> json) =
      _$ScholarshipTypesModelImpl.fromJson;

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
  List<StepsModel>? get steps;
  @override
  @JsonKey(ignore: true)
  _$$ScholarshipTypesModelImplCopyWith<_$ScholarshipTypesModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

StepsModel _$StepsModelFromJson(Map<String, dynamic> json) {
  return _StepsModel.fromJson(json);
}

/// @nodoc
mixin _$StepsModel {
  int? get id => throw _privateConstructorUsedError;
  int? get scholarship_type_id => throw _privateConstructorUsedError;
  int? get sort => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get name_ar => throw _privateConstructorUsedError;
  int? get amount => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  String? get updated_at => throw _privateConstructorUsedError;
  String? get deleted_at => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StepsModelCopyWith<StepsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StepsModelCopyWith<$Res> {
  factory $StepsModelCopyWith(
          StepsModel value, $Res Function(StepsModel) then) =
      _$StepsModelCopyWithImpl<$Res, StepsModel>;
  @useResult
  $Res call(
      {int? id,
      int? scholarship_type_id,
      int? sort,
      String? name,
      String? name_ar,
      int? amount,
      String? created_at,
      String? updated_at,
      String? deleted_at});
}

/// @nodoc
class _$StepsModelCopyWithImpl<$Res, $Val extends StepsModel>
    implements $StepsModelCopyWith<$Res> {
  _$StepsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? scholarship_type_id = freezed,
    Object? sort = freezed,
    Object? name = freezed,
    Object? name_ar = freezed,
    Object? amount = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      scholarship_type_id: freezed == scholarship_type_id
          ? _value.scholarship_type_id
          : scholarship_type_id // ignore: cast_nullable_to_non_nullable
              as int?,
      sort: freezed == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      name_ar: freezed == name_ar
          ? _value.name_ar
          : name_ar // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
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
abstract class _$$StepsModelImplCopyWith<$Res>
    implements $StepsModelCopyWith<$Res> {
  factory _$$StepsModelImplCopyWith(
          _$StepsModelImpl value, $Res Function(_$StepsModelImpl) then) =
      __$$StepsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? scholarship_type_id,
      int? sort,
      String? name,
      String? name_ar,
      int? amount,
      String? created_at,
      String? updated_at,
      String? deleted_at});
}

/// @nodoc
class __$$StepsModelImplCopyWithImpl<$Res>
    extends _$StepsModelCopyWithImpl<$Res, _$StepsModelImpl>
    implements _$$StepsModelImplCopyWith<$Res> {
  __$$StepsModelImplCopyWithImpl(
      _$StepsModelImpl _value, $Res Function(_$StepsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? scholarship_type_id = freezed,
    Object? sort = freezed,
    Object? name = freezed,
    Object? name_ar = freezed,
    Object? amount = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
  }) {
    return _then(_$StepsModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      scholarship_type_id: freezed == scholarship_type_id
          ? _value.scholarship_type_id
          : scholarship_type_id // ignore: cast_nullable_to_non_nullable
              as int?,
      sort: freezed == sort
          ? _value.sort
          : sort // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      name_ar: freezed == name_ar
          ? _value.name_ar
          : name_ar // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
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
class _$StepsModelImpl extends _StepsModel {
  const _$StepsModelImpl(
      {this.id,
      this.scholarship_type_id,
      this.sort,
      this.name,
      this.name_ar,
      this.amount,
      this.created_at,
      this.updated_at,
      this.deleted_at})
      : super._();

  factory _$StepsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StepsModelImplFromJson(json);

  @override
  final int? id;
  @override
  final int? scholarship_type_id;
  @override
  final int? sort;
  @override
  final String? name;
  @override
  final String? name_ar;
  @override
  final int? amount;
  @override
  final String? created_at;
  @override
  final String? updated_at;
  @override
  final String? deleted_at;

  @override
  String toString() {
    return 'StepsModel(id: $id, scholarship_type_id: $scholarship_type_id, sort: $sort, name: $name, name_ar: $name_ar, amount: $amount, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StepsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.scholarship_type_id, scholarship_type_id) ||
                other.scholarship_type_id == scholarship_type_id) &&
            (identical(other.sort, sort) || other.sort == sort) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.name_ar, name_ar) || other.name_ar == name_ar) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.deleted_at, deleted_at) ||
                other.deleted_at == deleted_at));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, scholarship_type_id, sort,
      name, name_ar, amount, created_at, updated_at, deleted_at);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StepsModelImplCopyWith<_$StepsModelImpl> get copyWith =>
      __$$StepsModelImplCopyWithImpl<_$StepsModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StepsModelImplToJson(
      this,
    );
  }
}

abstract class _StepsModel extends StepsModel {
  const factory _StepsModel(
      {final int? id,
      final int? scholarship_type_id,
      final int? sort,
      final String? name,
      final String? name_ar,
      final int? amount,
      final String? created_at,
      final String? updated_at,
      final String? deleted_at}) = _$StepsModelImpl;
  const _StepsModel._() : super._();

  factory _StepsModel.fromJson(Map<String, dynamic> json) =
      _$StepsModelImpl.fromJson;

  @override
  int? get id;
  @override
  int? get scholarship_type_id;
  @override
  int? get sort;
  @override
  String? get name;
  @override
  String? get name_ar;
  @override
  int? get amount;
  @override
  String? get created_at;
  @override
  String? get updated_at;
  @override
  String? get deleted_at;
  @override
  @JsonKey(ignore: true)
  _$$StepsModelImplCopyWith<_$StepsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
