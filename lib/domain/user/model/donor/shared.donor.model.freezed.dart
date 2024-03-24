// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shared.donor.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SharedDonorModel _$SharedDonorModelFromJson(Map<String, dynamic> json) {
  return _SharedDonorModel.fromJson(json);
}

/// @nodoc
mixin _$SharedDonorModel {
  String? get AZSVR => throw _privateConstructorUsedError;
  DonorModel? get User => throw _privateConstructorUsedError;
  List<BeneficiaryModel>? get beneficiaries =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SharedDonorModelCopyWith<SharedDonorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SharedDonorModelCopyWith<$Res> {
  factory $SharedDonorModelCopyWith(
          SharedDonorModel value, $Res Function(SharedDonorModel) then) =
      _$SharedDonorModelCopyWithImpl<$Res, SharedDonorModel>;
  @useResult
  $Res call(
      {String? AZSVR, DonorModel? User, List<BeneficiaryModel>? beneficiaries});

  $DonorModelCopyWith<$Res>? get User;
}

/// @nodoc
class _$SharedDonorModelCopyWithImpl<$Res, $Val extends SharedDonorModel>
    implements $SharedDonorModelCopyWith<$Res> {
  _$SharedDonorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? AZSVR = freezed,
    Object? User = freezed,
    Object? beneficiaries = freezed,
  }) {
    return _then(_value.copyWith(
      AZSVR: freezed == AZSVR
          ? _value.AZSVR
          : AZSVR // ignore: cast_nullable_to_non_nullable
              as String?,
      User: freezed == User
          ? _value.User
          : User // ignore: cast_nullable_to_non_nullable
              as DonorModel?,
      beneficiaries: freezed == beneficiaries
          ? _value.beneficiaries
          : beneficiaries // ignore: cast_nullable_to_non_nullable
              as List<BeneficiaryModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DonorModelCopyWith<$Res>? get User {
    if (_value.User == null) {
      return null;
    }

    return $DonorModelCopyWith<$Res>(_value.User!, (value) {
      return _then(_value.copyWith(User: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SharedDonorModelImplCopyWith<$Res>
    implements $SharedDonorModelCopyWith<$Res> {
  factory _$$SharedDonorModelImplCopyWith(_$SharedDonorModelImpl value,
          $Res Function(_$SharedDonorModelImpl) then) =
      __$$SharedDonorModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? AZSVR, DonorModel? User, List<BeneficiaryModel>? beneficiaries});

  @override
  $DonorModelCopyWith<$Res>? get User;
}

/// @nodoc
class __$$SharedDonorModelImplCopyWithImpl<$Res>
    extends _$SharedDonorModelCopyWithImpl<$Res, _$SharedDonorModelImpl>
    implements _$$SharedDonorModelImplCopyWith<$Res> {
  __$$SharedDonorModelImplCopyWithImpl(_$SharedDonorModelImpl _value,
      $Res Function(_$SharedDonorModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? AZSVR = freezed,
    Object? User = freezed,
    Object? beneficiaries = freezed,
  }) {
    return _then(_$SharedDonorModelImpl(
      AZSVR: freezed == AZSVR
          ? _value.AZSVR
          : AZSVR // ignore: cast_nullable_to_non_nullable
              as String?,
      User: freezed == User
          ? _value.User
          : User // ignore: cast_nullable_to_non_nullable
              as DonorModel?,
      beneficiaries: freezed == beneficiaries
          ? _value._beneficiaries
          : beneficiaries // ignore: cast_nullable_to_non_nullable
              as List<BeneficiaryModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SharedDonorModelImpl extends _SharedDonorModel {
  const _$SharedDonorModelImpl(
      {this.AZSVR, this.User, final List<BeneficiaryModel>? beneficiaries})
      : _beneficiaries = beneficiaries,
        super._();

  factory _$SharedDonorModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SharedDonorModelImplFromJson(json);

  @override
  final String? AZSVR;
  @override
  final DonorModel? User;
  final List<BeneficiaryModel>? _beneficiaries;
  @override
  List<BeneficiaryModel>? get beneficiaries {
    final value = _beneficiaries;
    if (value == null) return null;
    if (_beneficiaries is EqualUnmodifiableListView) return _beneficiaries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SharedDonorModel(AZSVR: $AZSVR, User: $User, beneficiaries: $beneficiaries)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SharedDonorModelImpl &&
            (identical(other.AZSVR, AZSVR) || other.AZSVR == AZSVR) &&
            (identical(other.User, User) || other.User == User) &&
            const DeepCollectionEquality()
                .equals(other._beneficiaries, _beneficiaries));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, AZSVR, User,
      const DeepCollectionEquality().hash(_beneficiaries));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SharedDonorModelImplCopyWith<_$SharedDonorModelImpl> get copyWith =>
      __$$SharedDonorModelImplCopyWithImpl<_$SharedDonorModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SharedDonorModelImplToJson(
      this,
    );
  }
}

abstract class _SharedDonorModel extends SharedDonorModel {
  const factory _SharedDonorModel(
      {final String? AZSVR,
      final DonorModel? User,
      final List<BeneficiaryModel>? beneficiaries}) = _$SharedDonorModelImpl;
  const _SharedDonorModel._() : super._();

  factory _SharedDonorModel.fromJson(Map<String, dynamic> json) =
      _$SharedDonorModelImpl.fromJson;

  @override
  String? get AZSVR;
  @override
  DonorModel? get User;
  @override
  List<BeneficiaryModel>? get beneficiaries;
  @override
  @JsonKey(ignore: true)
  _$$SharedDonorModelImplCopyWith<_$SharedDonorModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
