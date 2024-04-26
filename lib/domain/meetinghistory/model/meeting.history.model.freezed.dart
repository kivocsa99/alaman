// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meeting.history.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MeetingHistoryModel _$MeetingHistoryModelFromJson(Map<String, dynamic> json) {
  return _MeetingHistoryModel.fromJson(json);
}

/// @nodoc
mixin _$MeetingHistoryModel {
  int? get id => throw _privateConstructorUsedError;
  int? get beneficiary_id => throw _privateConstructorUsedError;
  int? get sponser_id => throw _privateConstructorUsedError;
  int? get meeting_method_id => throw _privateConstructorUsedError;
  String? get duration => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  String? get time => throw _privateConstructorUsedError;
  int? get meeting_status_id => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  String? get updated_at => throw _privateConstructorUsedError;
  String? get deleted_at => throw _privateConstructorUsedError;
  BeneficiaryModel? get beneficiary => throw _privateConstructorUsedError;
  MeetingMethodsModel? get method => throw _privateConstructorUsedError;
  StatusModel? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeetingHistoryModelCopyWith<MeetingHistoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeetingHistoryModelCopyWith<$Res> {
  factory $MeetingHistoryModelCopyWith(
          MeetingHistoryModel value, $Res Function(MeetingHistoryModel) then) =
      _$MeetingHistoryModelCopyWithImpl<$Res, MeetingHistoryModel>;
  @useResult
  $Res call(
      {int? id,
      int? beneficiary_id,
      int? sponser_id,
      int? meeting_method_id,
      String? duration,
      String? date,
      String? time,
      int? meeting_status_id,
      String? link,
      String? notes,
      String? created_at,
      String? updated_at,
      String? deleted_at,
      BeneficiaryModel? beneficiary,
      MeetingMethodsModel? method,
      StatusModel? status});

  $BeneficiaryModelCopyWith<$Res>? get beneficiary;
  $MeetingMethodsModelCopyWith<$Res>? get method;
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class _$MeetingHistoryModelCopyWithImpl<$Res, $Val extends MeetingHistoryModel>
    implements $MeetingHistoryModelCopyWith<$Res> {
  _$MeetingHistoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? beneficiary_id = freezed,
    Object? sponser_id = freezed,
    Object? meeting_method_id = freezed,
    Object? duration = freezed,
    Object? date = freezed,
    Object? time = freezed,
    Object? meeting_status_id = freezed,
    Object? link = freezed,
    Object? notes = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
    Object? beneficiary = freezed,
    Object? method = freezed,
    Object? status = freezed,
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
      sponser_id: freezed == sponser_id
          ? _value.sponser_id
          : sponser_id // ignore: cast_nullable_to_non_nullable
              as int?,
      meeting_method_id: freezed == meeting_method_id
          ? _value.meeting_method_id
          : meeting_method_id // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      meeting_status_id: freezed == meeting_status_id
          ? _value.meeting_status_id
          : meeting_status_id // ignore: cast_nullable_to_non_nullable
              as int?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
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
      beneficiary: freezed == beneficiary
          ? _value.beneficiary
          : beneficiary // ignore: cast_nullable_to_non_nullable
              as BeneficiaryModel?,
      method: freezed == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as MeetingMethodsModel?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
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

  @override
  @pragma('vm:prefer-inline')
  $MeetingMethodsModelCopyWith<$Res>? get method {
    if (_value.method == null) {
      return null;
    }

    return $MeetingMethodsModelCopyWith<$Res>(_value.method!, (value) {
      return _then(_value.copyWith(method: value) as $Val);
    });
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
abstract class _$$MeetingHistoryModelImplCopyWith<$Res>
    implements $MeetingHistoryModelCopyWith<$Res> {
  factory _$$MeetingHistoryModelImplCopyWith(_$MeetingHistoryModelImpl value,
          $Res Function(_$MeetingHistoryModelImpl) then) =
      __$$MeetingHistoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? beneficiary_id,
      int? sponser_id,
      int? meeting_method_id,
      String? duration,
      String? date,
      String? time,
      int? meeting_status_id,
      String? link,
      String? notes,
      String? created_at,
      String? updated_at,
      String? deleted_at,
      BeneficiaryModel? beneficiary,
      MeetingMethodsModel? method,
      StatusModel? status});

  @override
  $BeneficiaryModelCopyWith<$Res>? get beneficiary;
  @override
  $MeetingMethodsModelCopyWith<$Res>? get method;
  @override
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class __$$MeetingHistoryModelImplCopyWithImpl<$Res>
    extends _$MeetingHistoryModelCopyWithImpl<$Res, _$MeetingHistoryModelImpl>
    implements _$$MeetingHistoryModelImplCopyWith<$Res> {
  __$$MeetingHistoryModelImplCopyWithImpl(_$MeetingHistoryModelImpl _value,
      $Res Function(_$MeetingHistoryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? beneficiary_id = freezed,
    Object? sponser_id = freezed,
    Object? meeting_method_id = freezed,
    Object? duration = freezed,
    Object? date = freezed,
    Object? time = freezed,
    Object? meeting_status_id = freezed,
    Object? link = freezed,
    Object? notes = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
    Object? beneficiary = freezed,
    Object? method = freezed,
    Object? status = freezed,
  }) {
    return _then(_$MeetingHistoryModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      beneficiary_id: freezed == beneficiary_id
          ? _value.beneficiary_id
          : beneficiary_id // ignore: cast_nullable_to_non_nullable
              as int?,
      sponser_id: freezed == sponser_id
          ? _value.sponser_id
          : sponser_id // ignore: cast_nullable_to_non_nullable
              as int?,
      meeting_method_id: freezed == meeting_method_id
          ? _value.meeting_method_id
          : meeting_method_id // ignore: cast_nullable_to_non_nullable
              as int?,
      duration: freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String?,
      meeting_status_id: freezed == meeting_status_id
          ? _value.meeting_status_id
          : meeting_status_id // ignore: cast_nullable_to_non_nullable
              as int?,
      link: freezed == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
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
      beneficiary: freezed == beneficiary
          ? _value.beneficiary
          : beneficiary // ignore: cast_nullable_to_non_nullable
              as BeneficiaryModel?,
      method: freezed == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as MeetingMethodsModel?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MeetingHistoryModelImpl extends _MeetingHistoryModel {
  const _$MeetingHistoryModelImpl(
      {this.id,
      this.beneficiary_id,
      this.sponser_id,
      this.meeting_method_id,
      this.duration,
      this.date,
      this.time,
      this.meeting_status_id,
      this.link,
      this.notes,
      this.created_at,
      this.updated_at,
      this.deleted_at,
      this.beneficiary,
      this.method,
      this.status})
      : super._();

  factory _$MeetingHistoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MeetingHistoryModelImplFromJson(json);

  @override
  final int? id;
  @override
  final int? beneficiary_id;
  @override
  final int? sponser_id;
  @override
  final int? meeting_method_id;
  @override
  final String? duration;
  @override
  final String? date;
  @override
  final String? time;
  @override
  final int? meeting_status_id;
  @override
  final String? link;
  @override
  final String? notes;
  @override
  final String? created_at;
  @override
  final String? updated_at;
  @override
  final String? deleted_at;
  @override
  final BeneficiaryModel? beneficiary;
  @override
  final MeetingMethodsModel? method;
  @override
  final StatusModel? status;

  @override
  String toString() {
    return 'MeetingHistoryModel(id: $id, beneficiary_id: $beneficiary_id, sponser_id: $sponser_id, meeting_method_id: $meeting_method_id, duration: $duration, date: $date, time: $time, meeting_status_id: $meeting_status_id, link: $link, notes: $notes, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at, beneficiary: $beneficiary, method: $method, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MeetingHistoryModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.beneficiary_id, beneficiary_id) ||
                other.beneficiary_id == beneficiary_id) &&
            (identical(other.sponser_id, sponser_id) ||
                other.sponser_id == sponser_id) &&
            (identical(other.meeting_method_id, meeting_method_id) ||
                other.meeting_method_id == meeting_method_id) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.meeting_status_id, meeting_status_id) ||
                other.meeting_status_id == meeting_status_id) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.notes, notes) || other.notes == notes) &&
            (identical(other.created_at, created_at) ||
                other.created_at == created_at) &&
            (identical(other.updated_at, updated_at) ||
                other.updated_at == updated_at) &&
            (identical(other.deleted_at, deleted_at) ||
                other.deleted_at == deleted_at) &&
            (identical(other.beneficiary, beneficiary) ||
                other.beneficiary == beneficiary) &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      beneficiary_id,
      sponser_id,
      meeting_method_id,
      duration,
      date,
      time,
      meeting_status_id,
      link,
      notes,
      created_at,
      updated_at,
      deleted_at,
      beneficiary,
      method,
      status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MeetingHistoryModelImplCopyWith<_$MeetingHistoryModelImpl> get copyWith =>
      __$$MeetingHistoryModelImplCopyWithImpl<_$MeetingHistoryModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MeetingHistoryModelImplToJson(
      this,
    );
  }
}

abstract class _MeetingHistoryModel extends MeetingHistoryModel {
  const factory _MeetingHistoryModel(
      {final int? id,
      final int? beneficiary_id,
      final int? sponser_id,
      final int? meeting_method_id,
      final String? duration,
      final String? date,
      final String? time,
      final int? meeting_status_id,
      final String? link,
      final String? notes,
      final String? created_at,
      final String? updated_at,
      final String? deleted_at,
      final BeneficiaryModel? beneficiary,
      final MeetingMethodsModel? method,
      final StatusModel? status}) = _$MeetingHistoryModelImpl;
  const _MeetingHistoryModel._() : super._();

  factory _MeetingHistoryModel.fromJson(Map<String, dynamic> json) =
      _$MeetingHistoryModelImpl.fromJson;

  @override
  int? get id;
  @override
  int? get beneficiary_id;
  @override
  int? get sponser_id;
  @override
  int? get meeting_method_id;
  @override
  String? get duration;
  @override
  String? get date;
  @override
  String? get time;
  @override
  int? get meeting_status_id;
  @override
  String? get link;
  @override
  String? get notes;
  @override
  String? get created_at;
  @override
  String? get updated_at;
  @override
  String? get deleted_at;
  @override
  BeneficiaryModel? get beneficiary;
  @override
  MeetingMethodsModel? get method;
  @override
  StatusModel? get status;
  @override
  @JsonKey(ignore: true)
  _$$MeetingHistoryModelImplCopyWith<_$MeetingHistoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
