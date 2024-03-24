// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'training.request.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TrainingRequestModel _$TrainingRequestModelFromJson(Map<String, dynamic> json) {
  return _TrainingRequestModel.fromJson(json);
}

/// @nodoc
mixin _$TrainingRequestModel {
  int? get id => throw _privateConstructorUsedError;
  int? get beneficiary_id => throw _privateConstructorUsedError;
  int? get training_program_id => throw _privateConstructorUsedError;
  int? get ematraining_request_status_idil =>
      throw _privateConstructorUsedError;
  String? get training_date => throw _privateConstructorUsedError;
  String? get training_time => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String? get national_id_number => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  String? get updated_at => throw _privateConstructorUsedError;
  String? get deleted_at => throw _privateConstructorUsedError;
  StatusModel? get status => throw _privateConstructorUsedError;
  ProgramModel? get program => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrainingRequestModelCopyWith<TrainingRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainingRequestModelCopyWith<$Res> {
  factory $TrainingRequestModelCopyWith(TrainingRequestModel value,
          $Res Function(TrainingRequestModel) then) =
      _$TrainingRequestModelCopyWithImpl<$Res, TrainingRequestModel>;
  @useResult
  $Res call(
      {int? id,
      int? beneficiary_id,
      int? training_program_id,
      int? ematraining_request_status_idil,
      String? training_date,
      String? training_time,
      String? notes,
      String? national_id_number,
      String? address,
      String? created_at,
      String? updated_at,
      String? deleted_at,
      StatusModel? status,
      ProgramModel? program});

  $StatusModelCopyWith<$Res>? get status;
  $ProgramModelCopyWith<$Res>? get program;
}

/// @nodoc
class _$TrainingRequestModelCopyWithImpl<$Res,
        $Val extends TrainingRequestModel>
    implements $TrainingRequestModelCopyWith<$Res> {
  _$TrainingRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? beneficiary_id = freezed,
    Object? training_program_id = freezed,
    Object? ematraining_request_status_idil = freezed,
    Object? training_date = freezed,
    Object? training_time = freezed,
    Object? notes = freezed,
    Object? national_id_number = freezed,
    Object? address = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
    Object? status = freezed,
    Object? program = freezed,
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
      training_program_id: freezed == training_program_id
          ? _value.training_program_id
          : training_program_id // ignore: cast_nullable_to_non_nullable
              as int?,
      ematraining_request_status_idil: freezed ==
              ematraining_request_status_idil
          ? _value.ematraining_request_status_idil
          : ematraining_request_status_idil // ignore: cast_nullable_to_non_nullable
              as int?,
      training_date: freezed == training_date
          ? _value.training_date
          : training_date // ignore: cast_nullable_to_non_nullable
              as String?,
      training_time: freezed == training_time
          ? _value.training_time
          : training_time // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      national_id_number: freezed == national_id_number
          ? _value.national_id_number
          : national_id_number // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
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
      program: freezed == program
          ? _value.program
          : program // ignore: cast_nullable_to_non_nullable
              as ProgramModel?,
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
  $ProgramModelCopyWith<$Res>? get program {
    if (_value.program == null) {
      return null;
    }

    return $ProgramModelCopyWith<$Res>(_value.program!, (value) {
      return _then(_value.copyWith(program: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TrainingRequestModelImplCopyWith<$Res>
    implements $TrainingRequestModelCopyWith<$Res> {
  factory _$$TrainingRequestModelImplCopyWith(_$TrainingRequestModelImpl value,
          $Res Function(_$TrainingRequestModelImpl) then) =
      __$$TrainingRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? beneficiary_id,
      int? training_program_id,
      int? ematraining_request_status_idil,
      String? training_date,
      String? training_time,
      String? notes,
      String? national_id_number,
      String? address,
      String? created_at,
      String? updated_at,
      String? deleted_at,
      StatusModel? status,
      ProgramModel? program});

  @override
  $StatusModelCopyWith<$Res>? get status;
  @override
  $ProgramModelCopyWith<$Res>? get program;
}

/// @nodoc
class __$$TrainingRequestModelImplCopyWithImpl<$Res>
    extends _$TrainingRequestModelCopyWithImpl<$Res, _$TrainingRequestModelImpl>
    implements _$$TrainingRequestModelImplCopyWith<$Res> {
  __$$TrainingRequestModelImplCopyWithImpl(_$TrainingRequestModelImpl _value,
      $Res Function(_$TrainingRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? beneficiary_id = freezed,
    Object? training_program_id = freezed,
    Object? ematraining_request_status_idil = freezed,
    Object? training_date = freezed,
    Object? training_time = freezed,
    Object? notes = freezed,
    Object? national_id_number = freezed,
    Object? address = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
    Object? status = freezed,
    Object? program = freezed,
  }) {
    return _then(_$TrainingRequestModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      beneficiary_id: freezed == beneficiary_id
          ? _value.beneficiary_id
          : beneficiary_id // ignore: cast_nullable_to_non_nullable
              as int?,
      training_program_id: freezed == training_program_id
          ? _value.training_program_id
          : training_program_id // ignore: cast_nullable_to_non_nullable
              as int?,
      ematraining_request_status_idil: freezed ==
              ematraining_request_status_idil
          ? _value.ematraining_request_status_idil
          : ematraining_request_status_idil // ignore: cast_nullable_to_non_nullable
              as int?,
      training_date: freezed == training_date
          ? _value.training_date
          : training_date // ignore: cast_nullable_to_non_nullable
              as String?,
      training_time: freezed == training_time
          ? _value.training_time
          : training_time // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      national_id_number: freezed == national_id_number
          ? _value.national_id_number
          : national_id_number // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
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
      program: freezed == program
          ? _value.program
          : program // ignore: cast_nullable_to_non_nullable
              as ProgramModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TrainingRequestModelImpl extends _TrainingRequestModel {
  const _$TrainingRequestModelImpl(
      {this.id,
      this.beneficiary_id,
      this.training_program_id,
      this.ematraining_request_status_idil,
      this.training_date,
      this.training_time,
      this.notes,
      this.national_id_number,
      this.address,
      this.created_at,
      this.updated_at,
      this.deleted_at,
      this.status,
      this.program})
      : super._();

  factory _$TrainingRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TrainingRequestModelImplFromJson(json);

  @override
  final int? id;
  @override
  final int? beneficiary_id;
  @override
  final int? training_program_id;
  @override
  final int? ematraining_request_status_idil;
  @override
  final String? training_date;
  @override
  final String? training_time;
  @override
  final String? notes;
  @override
  final String? national_id_number;
  @override
  final String? address;
  @override
  final String? created_at;
  @override
  final String? updated_at;
  @override
  final String? deleted_at;
  @override
  final StatusModel? status;
  @override
  final ProgramModel? program;

  @override
  String toString() {
    return 'TrainingRequestModel(id: $id, beneficiary_id: $beneficiary_id, training_program_id: $training_program_id, ematraining_request_status_idil: $ematraining_request_status_idil, training_date: $training_date, training_time: $training_time, notes: $notes, national_id_number: $national_id_number, address: $address, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at, status: $status, program: $program)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TrainingRequestModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.beneficiary_id, beneficiary_id) ||
                other.beneficiary_id == beneficiary_id) &&
            (identical(other.training_program_id, training_program_id) ||
                other.training_program_id == training_program_id) &&
            (identical(other.ematraining_request_status_idil,
                    ematraining_request_status_idil) ||
                other.ematraining_request_status_idil ==
                    ematraining_request_status_idil) &&
            (identical(other.training_date, training_date) ||
                other.training_date == training_date) &&
            (identical(other.training_time, training_time) ||
                other.training_time == training_time) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.national_id_number, national_id_number) ||
                other.national_id_number == national_id_number) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.deleted_at, deleted_at) ||
                other.deleted_at == deleted_at) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.program, program) || other.program == program));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      beneficiary_id,
      training_program_id,
      ematraining_request_status_idil,
      training_date,
      training_time,
      notes,
      national_id_number,
      address,
      created_at,
      updated_at,
      deleted_at,
      status,
      program);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TrainingRequestModelImplCopyWith<_$TrainingRequestModelImpl>
      get copyWith =>
          __$$TrainingRequestModelImplCopyWithImpl<_$TrainingRequestModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TrainingRequestModelImplToJson(
      this,
    );
  }
}

abstract class _TrainingRequestModel extends TrainingRequestModel {
  const factory _TrainingRequestModel(
      {final int? id,
      final int? beneficiary_id,
      final int? training_program_id,
      final int? ematraining_request_status_idil,
      final String? training_date,
      final String? training_time,
      final String? notes,
      final String? national_id_number,
      final String? address,
      final String? created_at,
      final String? updated_at,
      final String? deleted_at,
      final StatusModel? status,
      final ProgramModel? program}) = _$TrainingRequestModelImpl;
  const _TrainingRequestModel._() : super._();

  factory _TrainingRequestModel.fromJson(Map<String, dynamic> json) =
      _$TrainingRequestModelImpl.fromJson;

  @override
  int? get id;
  @override
  int? get beneficiary_id;
  @override
  int? get training_program_id;
  @override
  int? get ematraining_request_status_idil;
  @override
  String? get training_date;
  @override
  String? get training_time;
  @override
  String? get notes;
  @override
  String? get national_id_number;
  @override
  String? get address;
  @override
  String? get created_at;
  @override
  String? get updated_at;
  @override
  String? get deleted_at;
  @override
  StatusModel? get status;
  @override
  ProgramModel? get program;
  @override
  @JsonKey(ignore: true)
  _$$TrainingRequestModelImplCopyWith<_$TrainingRequestModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProgramModel _$ProgramModelFromJson(Map<String, dynamic> json) {
  return _ProgramModel.fromJson(json);
}

/// @nodoc
mixin _$ProgramModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get name_ar => throw _privateConstructorUsedError;
  String? get date_from => throw _privateConstructorUsedError;
  String? get date_to => throw _privateConstructorUsedError;
  String? get time_from => throw _privateConstructorUsedError;
  String? get national_id_number => throw _privateConstructorUsedError;
  String? get time_to => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  int? get Active => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  String? get updated_at => throw _privateConstructorUsedError;
  String? get deleted_at => throw _privateConstructorUsedError;
  StatusModel? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProgramModelCopyWith<ProgramModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgramModelCopyWith<$Res> {
  factory $ProgramModelCopyWith(
          ProgramModel value, $Res Function(ProgramModel) then) =
      _$ProgramModelCopyWithImpl<$Res, ProgramModel>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? name_ar,
      String? date_from,
      String? date_to,
      String? time_from,
      String? national_id_number,
      String? time_to,
      String? notes,
      int? Active,
      String? created_at,
      String? updated_at,
      String? deleted_at,
      StatusModel? status});

  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class _$ProgramModelCopyWithImpl<$Res, $Val extends ProgramModel>
    implements $ProgramModelCopyWith<$Res> {
  _$ProgramModelCopyWithImpl(this._value, this._then);

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
    Object? date_from = freezed,
    Object? date_to = freezed,
    Object? time_from = freezed,
    Object? national_id_number = freezed,
    Object? time_to = freezed,
    Object? notes = freezed,
    Object? Active = freezed,
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
      date_from: freezed == date_from
          ? _value.date_from
          : date_from // ignore: cast_nullable_to_non_nullable
              as String?,
      date_to: freezed == date_to
          ? _value.date_to
          : date_to // ignore: cast_nullable_to_non_nullable
              as String?,
      time_from: freezed == time_from
          ? _value.time_from
          : time_from // ignore: cast_nullable_to_non_nullable
              as String?,
      national_id_number: freezed == national_id_number
          ? _value.national_id_number
          : national_id_number // ignore: cast_nullable_to_non_nullable
              as String?,
      time_to: freezed == time_to
          ? _value.time_to
          : time_to // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      Active: freezed == Active
          ? _value.Active
          : Active // ignore: cast_nullable_to_non_nullable
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
abstract class _$$ProgramModelImplCopyWith<$Res>
    implements $ProgramModelCopyWith<$Res> {
  factory _$$ProgramModelImplCopyWith(
          _$ProgramModelImpl value, $Res Function(_$ProgramModelImpl) then) =
      __$$ProgramModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? name_ar,
      String? date_from,
      String? date_to,
      String? time_from,
      String? national_id_number,
      String? time_to,
      String? notes,
      int? Active,
      String? created_at,
      String? updated_at,
      String? deleted_at,
      StatusModel? status});

  @override
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class __$$ProgramModelImplCopyWithImpl<$Res>
    extends _$ProgramModelCopyWithImpl<$Res, _$ProgramModelImpl>
    implements _$$ProgramModelImplCopyWith<$Res> {
  __$$ProgramModelImplCopyWithImpl(
      _$ProgramModelImpl _value, $Res Function(_$ProgramModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? name_ar = freezed,
    Object? date_from = freezed,
    Object? date_to = freezed,
    Object? time_from = freezed,
    Object? national_id_number = freezed,
    Object? time_to = freezed,
    Object? notes = freezed,
    Object? Active = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
    Object? status = freezed,
  }) {
    return _then(_$ProgramModelImpl(
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
      date_from: freezed == date_from
          ? _value.date_from
          : date_from // ignore: cast_nullable_to_non_nullable
              as String?,
      date_to: freezed == date_to
          ? _value.date_to
          : date_to // ignore: cast_nullable_to_non_nullable
              as String?,
      time_from: freezed == time_from
          ? _value.time_from
          : time_from // ignore: cast_nullable_to_non_nullable
              as String?,
      national_id_number: freezed == national_id_number
          ? _value.national_id_number
          : national_id_number // ignore: cast_nullable_to_non_nullable
              as String?,
      time_to: freezed == time_to
          ? _value.time_to
          : time_to // ignore: cast_nullable_to_non_nullable
              as String?,
      notes: freezed == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String?,
      Active: freezed == Active
          ? _value.Active
          : Active // ignore: cast_nullable_to_non_nullable
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
class _$ProgramModelImpl extends _ProgramModel {
  const _$ProgramModelImpl(
      {this.id,
      this.name,
      this.name_ar,
      this.date_from,
      this.date_to,
      this.time_from,
      this.national_id_number,
      this.time_to,
      this.notes,
      this.Active,
      this.created_at,
      this.updated_at,
      this.deleted_at,
      this.status})
      : super._();

  factory _$ProgramModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProgramModelImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? name_ar;
  @override
  final String? date_from;
  @override
  final String? date_to;
  @override
  final String? time_from;
  @override
  final String? national_id_number;
  @override
  final String? time_to;
  @override
  final String? notes;
  @override
  final int? Active;
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
    return 'ProgramModel(id: $id, name: $name, name_ar: $name_ar, date_from: $date_from, date_to: $date_to, time_from: $time_from, national_id_number: $national_id_number, time_to: $time_to, notes: $notes, Active: $Active, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProgramModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.name_ar, name_ar) || other.name_ar == name_ar) &&
            (identical(other.date_from, date_from) ||
                other.date_from == date_from) &&
            (identical(other.date_to, date_to) || other.date_to == date_to) &&
            (identical(other.time_from, time_from) ||
                other.time_from == time_from) &&
            (identical(other.national_id_number, national_id_number) ||
                other.national_id_number == national_id_number) &&
            (identical(other.time_to, time_to) || other.time_to == time_to) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.Active, Active) || other.Active == Active) &&
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
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      name_ar,
      date_from,
      date_to,
      time_from,
      national_id_number,
      time_to,
      notes,
      Active,
      created_at,
      updated_at,
      deleted_at,
      status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProgramModelImplCopyWith<_$ProgramModelImpl> get copyWith =>
      __$$ProgramModelImplCopyWithImpl<_$ProgramModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProgramModelImplToJson(
      this,
    );
  }
}

abstract class _ProgramModel extends ProgramModel {
  const factory _ProgramModel(
      {final int? id,
      final String? name,
      final String? name_ar,
      final String? date_from,
      final String? date_to,
      final String? time_from,
      final String? national_id_number,
      final String? time_to,
      final String? notes,
      final int? Active,
      final String? created_at,
      final String? updated_at,
      final String? deleted_at,
      final StatusModel? status}) = _$ProgramModelImpl;
  const _ProgramModel._() : super._();

  factory _ProgramModel.fromJson(Map<String, dynamic> json) =
      _$ProgramModelImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get name_ar;
  @override
  String? get date_from;
  @override
  String? get date_to;
  @override
  String? get time_from;
  @override
  String? get national_id_number;
  @override
  String? get time_to;
  @override
  String? get notes;
  @override
  int? get Active;
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
  _$$ProgramModelImplCopyWith<_$ProgramModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
