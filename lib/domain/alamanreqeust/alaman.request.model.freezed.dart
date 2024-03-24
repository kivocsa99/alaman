// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alaman.request.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AlamanRequestModel _$AlamanRequestModelFromJson(Map<String, dynamic> json) {
  return _AlamanRequestModel.fromJson(json);
}

/// @nodoc
mixin _$AlamanRequestModel {
  int? get id => throw _privateConstructorUsedError;
  int? get beneficiary_id => throw _privateConstructorUsedError;
  int? get alaman_service_id => throw _privateConstructorUsedError;
  int? get alaman_request_status_id => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  String? get updated_at => throw _privateConstructorUsedError;
  String? get deleted_at => throw _privateConstructorUsedError;
  StatusModel? get status => throw _privateConstructorUsedError;
  TypeModel? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlamanRequestModelCopyWith<AlamanRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlamanRequestModelCopyWith<$Res> {
  factory $AlamanRequestModelCopyWith(
          AlamanRequestModel value, $Res Function(AlamanRequestModel) then) =
      _$AlamanRequestModelCopyWithImpl<$Res, AlamanRequestModel>;
  @useResult
  $Res call(
      {int? id,
      int? beneficiary_id,
      int? alaman_service_id,
      int? alaman_request_status_id,
      String? notes,
      String? created_at,
      String? updated_at,
      String? deleted_at,
      StatusModel? status,
      TypeModel? type});

  $StatusModelCopyWith<$Res>? get status;
  $TypeModelCopyWith<$Res>? get type;
}

/// @nodoc
class _$AlamanRequestModelCopyWithImpl<$Res, $Val extends AlamanRequestModel>
    implements $AlamanRequestModelCopyWith<$Res> {
  _$AlamanRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? beneficiary_id = freezed,
    Object? alaman_service_id = freezed,
    Object? alaman_request_status_id = freezed,
    Object? notes = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
    Object? status = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      beneficiary_id: freezed == beneficiary_id
          ? _value.beneficiary_id
          : beneficiary_id // ignore: cast_nullable_to_non_nullable
              as int?,
      alaman_service_id: freezed == alaman_service_id
          ? _value.alaman_service_id
          : alaman_service_id // ignore: cast_nullable_to_non_nullable
              as int?,
      alaman_request_status_id: freezed == alaman_request_status_id
          ? _value.alaman_request_status_id
          : alaman_request_status_id // ignore: cast_nullable_to_non_nullable
              as int?,
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
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TypeModel?,
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

  @override
  @pragma('vm:prefer-inline')
  $TypeModelCopyWith<$Res>? get type {
    if (_value.type == null) {
      return null;
    }

    return $TypeModelCopyWith<$Res>(_value.type!, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AlamanRequestModelImplCopyWith<$Res>
    implements $AlamanRequestModelCopyWith<$Res> {
  factory _$$AlamanRequestModelImplCopyWith(_$AlamanRequestModelImpl value,
          $Res Function(_$AlamanRequestModelImpl) then) =
      __$$AlamanRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? beneficiary_id,
      int? alaman_service_id,
      int? alaman_request_status_id,
      String? notes,
      String? created_at,
      String? updated_at,
      String? deleted_at,
      StatusModel? status,
      TypeModel? type});

  @override
  $StatusModelCopyWith<$Res>? get status;
  @override
  $TypeModelCopyWith<$Res>? get type;
}

/// @nodoc
class __$$AlamanRequestModelImplCopyWithImpl<$Res>
    extends _$AlamanRequestModelCopyWithImpl<$Res, _$AlamanRequestModelImpl>
    implements _$$AlamanRequestModelImplCopyWith<$Res> {
  __$$AlamanRequestModelImplCopyWithImpl(_$AlamanRequestModelImpl _value,
      $Res Function(_$AlamanRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? beneficiary_id = freezed,
    Object? alaman_service_id = freezed,
    Object? alaman_request_status_id = freezed,
    Object? notes = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
    Object? status = freezed,
    Object? type = freezed,
  }) {
    return _then(_$AlamanRequestModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      beneficiary_id: freezed == beneficiary_id
          ? _value.beneficiary_id
          : beneficiary_id // ignore: cast_nullable_to_non_nullable
              as int?,
      alaman_service_id: freezed == alaman_service_id
          ? _value.alaman_service_id
          : alaman_service_id // ignore: cast_nullable_to_non_nullable
              as int?,
      alaman_request_status_id: freezed == alaman_request_status_id
          ? _value.alaman_request_status_id
          : alaman_request_status_id // ignore: cast_nullable_to_non_nullable
              as int?,
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
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TypeModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AlamanRequestModelImpl extends _AlamanRequestModel {
  const _$AlamanRequestModelImpl(
      {this.id,
      this.beneficiary_id,
      this.alaman_service_id,
      this.alaman_request_status_id,
      this.notes,
      this.created_at,
      this.updated_at,
      this.deleted_at,
      this.status,
      this.type})
      : super._();

  factory _$AlamanRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlamanRequestModelImplFromJson(json);

  @override
  final int? id;
  @override
  final int? beneficiary_id;
  @override
  final int? alaman_service_id;
  @override
  final int? alaman_request_status_id;
  @override
  final String? notes;
  @override
  final String? created_at;
  @override
  final String? updated_at;
  @override
  final String? deleted_at;
  @override
  final StatusModel? status;
  @override
  final TypeModel? type;

  @override
  String toString() {
    return 'AlamanRequestModel(id: $id, beneficiary_id: $beneficiary_id, alaman_service_id: $alaman_service_id, alaman_request_status_id: $alaman_request_status_id, notes: $notes, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at, status: $status, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlamanRequestModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.beneficiary_id, beneficiary_id) ||
                other.beneficiary_id == beneficiary_id) &&
            (identical(other.alaman_service_id, alaman_service_id) ||
                other.alaman_service_id == alaman_service_id) &&
            (identical(
                    other.alaman_request_status_id, alaman_request_status_id) ||
                other.alaman_request_status_id == alaman_request_status_id) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.deleted_at, deleted_at) ||
                other.deleted_at == deleted_at) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      beneficiary_id,
      alaman_service_id,
      alaman_request_status_id,
      notes,
      created_at,
      updated_at,
      deleted_at,
      status,
      type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlamanRequestModelImplCopyWith<_$AlamanRequestModelImpl> get copyWith =>
      __$$AlamanRequestModelImplCopyWithImpl<_$AlamanRequestModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlamanRequestModelImplToJson(
      this,
    );
  }
}

abstract class _AlamanRequestModel extends AlamanRequestModel {
  const factory _AlamanRequestModel(
      {final int? id,
      final int? beneficiary_id,
      final int? alaman_service_id,
      final int? alaman_request_status_id,
      final String? notes,
      final String? created_at,
      final String? updated_at,
      final String? deleted_at,
      final StatusModel? status,
      final TypeModel? type}) = _$AlamanRequestModelImpl;
  const _AlamanRequestModel._() : super._();

  factory _AlamanRequestModel.fromJson(Map<String, dynamic> json) =
      _$AlamanRequestModelImpl.fromJson;

  @override
  int? get id;
  @override
  int? get beneficiary_id;
  @override
  int? get alaman_service_id;
  @override
  int? get alaman_request_status_id;
  @override
  String? get notes;
  @override
  String? get created_at;
  @override
  String? get updated_at;
  @override
  String? get deleted_at;
  @override
  StatusModel? get status;
  @override
  TypeModel? get type;
  @override
  @JsonKey(ignore: true)
  _$$AlamanRequestModelImplCopyWith<_$AlamanRequestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TypeModel _$TypeModelFromJson(Map<String, dynamic> json) {
  return _TypeModel.fromJson(json);
}

/// @nodoc
mixin _$TypeModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get name_ar => throw _privateConstructorUsedError;
  int? get active => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  String? get updated_at => throw _privateConstructorUsedError;
  String? get deleted_at => throw _privateConstructorUsedError;
  StatusModel? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TypeModelCopyWith<TypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypeModelCopyWith<$Res> {
  factory $TypeModelCopyWith(TypeModel value, $Res Function(TypeModel) then) =
      _$TypeModelCopyWithImpl<$Res, TypeModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? name_ar,
      int? active,
      String? created_at,
      String? updated_at,
      String? deleted_at,
      StatusModel? status});

  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class _$TypeModelCopyWithImpl<$Res, $Val extends TypeModel>
    implements $TypeModelCopyWith<$Res> {
  _$TypeModelCopyWithImpl(this._value, this._then);

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
    Object? status = freezed,
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
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
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
abstract class _$$TypeModelImplCopyWith<$Res>
    implements $TypeModelCopyWith<$Res> {
  factory _$$TypeModelImplCopyWith(
          _$TypeModelImpl value, $Res Function(_$TypeModelImpl) then) =
      __$$TypeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? name_ar,
      int? active,
      String? created_at,
      String? updated_at,
      String? deleted_at,
      StatusModel? status});

  @override
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class __$$TypeModelImplCopyWithImpl<$Res>
    extends _$TypeModelCopyWithImpl<$Res, _$TypeModelImpl>
    implements _$$TypeModelImplCopyWith<$Res> {
  __$$TypeModelImplCopyWithImpl(
      _$TypeModelImpl _value, $Res Function(_$TypeModelImpl) _then)
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
    Object? status = freezed,
  }) {
    return _then(_$TypeModelImpl(
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
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TypeModelImpl extends _TypeModel {
  const _$TypeModelImpl(
      {this.id,
      this.name,
      this.name_ar,
      this.active,
      this.created_at,
      this.updated_at,
      this.deleted_at,
      this.status})
      : super._();

  factory _$TypeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TypeModelImplFromJson(json);

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
  final StatusModel? status;

  @override
  String toString() {
    return 'TypeModel(id: $id, name: $name, name_ar: $name_ar, active: $active, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TypeModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.name_ar, name_ar) || other.name_ar == name_ar) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.deleted_at, deleted_at) ||
                other.deleted_at == deleted_at) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, name_ar, active,
      created_at, updated_at, deleted_at, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TypeModelImplCopyWith<_$TypeModelImpl> get copyWith =>
      __$$TypeModelImplCopyWithImpl<_$TypeModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TypeModelImplToJson(
      this,
    );
  }
}

abstract class _TypeModel extends TypeModel {
  const factory _TypeModel(
      {final int? id,
      final String? name,
      final String? name_ar,
      final int? active,
      final String? created_at,
      final String? updated_at,
      final String? deleted_at,
      final StatusModel? status}) = _$TypeModelImpl;
  const _TypeModel._() : super._();

  factory _TypeModel.fromJson(Map<String, dynamic> json) =
      _$TypeModelImpl.fromJson;

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
  StatusModel? get status;
  @override
  @JsonKey(ignore: true)
  _$$TypeModelImplCopyWith<_$TypeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
