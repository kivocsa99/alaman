// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mou.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MouModel _$MouModelFromJson(Map<String, dynamic> json) {
  return _MouModel.fromJson(json);
}

/// @nodoc
mixin _$MouModel {
  int? get id => throw _privateConstructorUsedError;
  int? get donor_id => throw _privateConstructorUsedError;
  int? get mou_status_id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  num? get amount => throw _privateConstructorUsedError;
  String? get currency => throw _privateConstructorUsedError;
  String? get start_date => throw _privateConstructorUsedError;
  String? get end_date => throw _privateConstructorUsedError;
  String? get notes => throw _privateConstructorUsedError;
  String? get created_at => throw _privateConstructorUsedError;
  String? get updated_at => throw _privateConstructorUsedError;
  String? get deleted_at => throw _privateConstructorUsedError;
  StatusModel? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MouModelCopyWith<MouModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MouModelCopyWith<$Res> {
  factory $MouModelCopyWith(MouModel value, $Res Function(MouModel) then) =
      _$MouModelCopyWithImpl<$Res, MouModel>;
  @useResult
  $Res call(
      {int? id,
      int? donor_id,
      int? mou_status_id,
      String? title,
      num? amount,
      String? currency,
      String? start_date,
      String? end_date,
      String? notes,
      String? created_at,
      String? updated_at,
      String? deleted_at,
      StatusModel? status});

  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class _$MouModelCopyWithImpl<$Res, $Val extends MouModel>
    implements $MouModelCopyWith<$Res> {
  _$MouModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? donor_id = freezed,
    Object? mou_status_id = freezed,
    Object? title = freezed,
    Object? amount = freezed,
    Object? currency = freezed,
    Object? start_date = freezed,
    Object? end_date = freezed,
    Object? notes = freezed,
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
      donor_id: freezed == donor_id
          ? _value.donor_id
          : donor_id // ignore: cast_nullable_to_non_nullable
              as int?,
      mou_status_id: freezed == mou_status_id
          ? _value.mou_status_id
          : mou_status_id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      start_date: freezed == start_date
          ? _value.start_date
          : start_date // ignore: cast_nullable_to_non_nullable
              as String?,
      end_date: freezed == end_date
          ? _value.end_date
          : end_date // ignore: cast_nullable_to_non_nullable
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
abstract class _$$MouModelImplCopyWith<$Res>
    implements $MouModelCopyWith<$Res> {
  factory _$$MouModelImplCopyWith(
          _$MouModelImpl value, $Res Function(_$MouModelImpl) then) =
      __$$MouModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      int? donor_id,
      int? mou_status_id,
      String? title,
      num? amount,
      String? currency,
      String? start_date,
      String? end_date,
      String? notes,
      String? created_at,
      String? updated_at,
      String? deleted_at,
      StatusModel? status});

  @override
  $StatusModelCopyWith<$Res>? get status;
}

/// @nodoc
class __$$MouModelImplCopyWithImpl<$Res>
    extends _$MouModelCopyWithImpl<$Res, _$MouModelImpl>
    implements _$$MouModelImplCopyWith<$Res> {
  __$$MouModelImplCopyWithImpl(
      _$MouModelImpl _value, $Res Function(_$MouModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? donor_id = freezed,
    Object? mou_status_id = freezed,
    Object? title = freezed,
    Object? amount = freezed,
    Object? currency = freezed,
    Object? start_date = freezed,
    Object? end_date = freezed,
    Object? notes = freezed,
    Object? created_at = freezed,
    Object? updated_at = freezed,
    Object? deleted_at = freezed,
    Object? status = freezed,
  }) {
    return _then(_$MouModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      donor_id: freezed == donor_id
          ? _value.donor_id
          : donor_id // ignore: cast_nullable_to_non_nullable
              as int?,
      mou_status_id: freezed == mou_status_id
          ? _value.mou_status_id
          : mou_status_id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num?,
      currency: freezed == currency
          ? _value.currency
          : currency // ignore: cast_nullable_to_non_nullable
              as String?,
      start_date: freezed == start_date
          ? _value.start_date
          : start_date // ignore: cast_nullable_to_non_nullable
              as String?,
      end_date: freezed == end_date
          ? _value.end_date
          : end_date // ignore: cast_nullable_to_non_nullable
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
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as StatusModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MouModelImpl extends _MouModel {
  const _$MouModelImpl(
      {this.id,
      this.donor_id,
      this.mou_status_id,
      this.title,
      this.amount,
      this.currency,
      this.start_date,
      this.end_date,
      this.notes,
      this.created_at,
      this.updated_at,
      this.deleted_at,
      this.status})
      : super._();

  factory _$MouModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MouModelImplFromJson(json);

  @override
  final int? id;
  @override
  final int? donor_id;
  @override
  final int? mou_status_id;
  @override
  final String? title;
  @override
  final num? amount;
  @override
  final String? currency;
  @override
  final String? start_date;
  @override
  final String? end_date;
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
  String toString() {
    return 'MouModel(id: $id, donor_id: $donor_id, mou_status_id: $mou_status_id, title: $title, amount: $amount, currency: $currency, start_date: $start_date, end_date: $end_date, notes: $notes, created_at: $created_at, updated_at: $updated_at, deleted_at: $deleted_at, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MouModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.donor_id, donor_id) ||
                other.donor_id == donor_id) &&
            (identical(other.mou_status_id, mou_status_id) ||
                other.mou_status_id == mou_status_id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.currency, currency) ||
                other.currency == currency) &&
            (identical(other.start_date, start_date) ||
                other.start_date == start_date) &&
            (identical(other.end_date, end_date) ||
                other.end_date == end_date) &&
            (identical(other.notes, notes) || other.notes == notes) &&
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
      donor_id,
      mou_status_id,
      title,
      amount,
      currency,
      start_date,
      end_date,
      notes,
      created_at,
      updated_at,
      deleted_at,
      status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MouModelImplCopyWith<_$MouModelImpl> get copyWith =>
      __$$MouModelImplCopyWithImpl<_$MouModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MouModelImplToJson(
      this,
    );
  }
}

abstract class _MouModel extends MouModel {
  const factory _MouModel(
      {final int? id,
      final int? donor_id,
      final int? mou_status_id,
      final String? title,
      final num? amount,
      final String? currency,
      final String? start_date,
      final String? end_date,
      final String? notes,
      final String? created_at,
      final String? updated_at,
      final String? deleted_at,
      final StatusModel? status}) = _$MouModelImpl;
  const _MouModel._() : super._();

  factory _MouModel.fromJson(Map<String, dynamic> json) =
      _$MouModelImpl.fromJson;

  @override
  int? get id;
  @override
  int? get donor_id;
  @override
  int? get mou_status_id;
  @override
  String? get title;
  @override
  num? get amount;
  @override
  String? get currency;
  @override
  String? get start_date;
  @override
  String? get end_date;
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
  @JsonKey(ignore: true)
  _$$MouModelImplCopyWith<_$MouModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
