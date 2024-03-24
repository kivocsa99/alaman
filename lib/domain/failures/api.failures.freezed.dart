// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api.failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ApiFailures {
  String? get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) connectionTimeOut,
    required TResult Function(String? message) cancel,
    required TResult Function(String? message) noResponse,
    required TResult Function(String? message) notFound,
    required TResult Function(String? message) internalError,
    required TResult Function(String? message) authFailed,
    required TResult Function(String? message) noConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? connectionTimeOut,
    TResult? Function(String? message)? cancel,
    TResult? Function(String? message)? noResponse,
    TResult? Function(String? message)? notFound,
    TResult? Function(String? message)? internalError,
    TResult? Function(String? message)? authFailed,
    TResult? Function(String? message)? noConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? connectionTimeOut,
    TResult Function(String? message)? cancel,
    TResult Function(String? message)? noResponse,
    TResult Function(String? message)? notFound,
    TResult Function(String? message)? internalError,
    TResult Function(String? message)? authFailed,
    TResult Function(String? message)? noConnection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConnectionTimeOut value) connectionTimeOut,
    required TResult Function(_Cancel value) cancel,
    required TResult Function(_NoResponse value) noResponse,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_InternalError value) internalError,
    required TResult Function(_AuthFailed value) authFailed,
    required TResult Function(_NoConnection value) noConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ConnectionTimeOut value)? connectionTimeOut,
    TResult? Function(_Cancel value)? cancel,
    TResult? Function(_NoResponse value)? noResponse,
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_InternalError value)? internalError,
    TResult? Function(_AuthFailed value)? authFailed,
    TResult? Function(_NoConnection value)? noConnection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConnectionTimeOut value)? connectionTimeOut,
    TResult Function(_Cancel value)? cancel,
    TResult Function(_NoResponse value)? noResponse,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_InternalError value)? internalError,
    TResult Function(_AuthFailed value)? authFailed,
    TResult Function(_NoConnection value)? noConnection,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ApiFailuresCopyWith<ApiFailures> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiFailuresCopyWith<$Res> {
  factory $ApiFailuresCopyWith(
          ApiFailures value, $Res Function(ApiFailures) then) =
      _$ApiFailuresCopyWithImpl<$Res, ApiFailures>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$ApiFailuresCopyWithImpl<$Res, $Val extends ApiFailures>
    implements $ApiFailuresCopyWith<$Res> {
  _$ApiFailuresCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ConnectionTimeOutImplCopyWith<$Res>
    implements $ApiFailuresCopyWith<$Res> {
  factory _$$ConnectionTimeOutImplCopyWith(_$ConnectionTimeOutImpl value,
          $Res Function(_$ConnectionTimeOutImpl) then) =
      __$$ConnectionTimeOutImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ConnectionTimeOutImplCopyWithImpl<$Res>
    extends _$ApiFailuresCopyWithImpl<$Res, _$ConnectionTimeOutImpl>
    implements _$$ConnectionTimeOutImplCopyWith<$Res> {
  __$$ConnectionTimeOutImplCopyWithImpl(_$ConnectionTimeOutImpl _value,
      $Res Function(_$ConnectionTimeOutImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ConnectionTimeOutImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ConnectionTimeOutImpl implements _ConnectionTimeOut {
  const _$ConnectionTimeOutImpl({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'ApiFailures.connectionTimeOut(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectionTimeOutImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ConnectionTimeOutImplCopyWith<_$ConnectionTimeOutImpl> get copyWith =>
      __$$ConnectionTimeOutImplCopyWithImpl<_$ConnectionTimeOutImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) connectionTimeOut,
    required TResult Function(String? message) cancel,
    required TResult Function(String? message) noResponse,
    required TResult Function(String? message) notFound,
    required TResult Function(String? message) internalError,
    required TResult Function(String? message) authFailed,
    required TResult Function(String? message) noConnection,
  }) {
    return connectionTimeOut(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? connectionTimeOut,
    TResult? Function(String? message)? cancel,
    TResult? Function(String? message)? noResponse,
    TResult? Function(String? message)? notFound,
    TResult? Function(String? message)? internalError,
    TResult? Function(String? message)? authFailed,
    TResult? Function(String? message)? noConnection,
  }) {
    return connectionTimeOut?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? connectionTimeOut,
    TResult Function(String? message)? cancel,
    TResult Function(String? message)? noResponse,
    TResult Function(String? message)? notFound,
    TResult Function(String? message)? internalError,
    TResult Function(String? message)? authFailed,
    TResult Function(String? message)? noConnection,
    required TResult orElse(),
  }) {
    if (connectionTimeOut != null) {
      return connectionTimeOut(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConnectionTimeOut value) connectionTimeOut,
    required TResult Function(_Cancel value) cancel,
    required TResult Function(_NoResponse value) noResponse,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_InternalError value) internalError,
    required TResult Function(_AuthFailed value) authFailed,
    required TResult Function(_NoConnection value) noConnection,
  }) {
    return connectionTimeOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ConnectionTimeOut value)? connectionTimeOut,
    TResult? Function(_Cancel value)? cancel,
    TResult? Function(_NoResponse value)? noResponse,
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_InternalError value)? internalError,
    TResult? Function(_AuthFailed value)? authFailed,
    TResult? Function(_NoConnection value)? noConnection,
  }) {
    return connectionTimeOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConnectionTimeOut value)? connectionTimeOut,
    TResult Function(_Cancel value)? cancel,
    TResult Function(_NoResponse value)? noResponse,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_InternalError value)? internalError,
    TResult Function(_AuthFailed value)? authFailed,
    TResult Function(_NoConnection value)? noConnection,
    required TResult orElse(),
  }) {
    if (connectionTimeOut != null) {
      return connectionTimeOut(this);
    }
    return orElse();
  }
}

abstract class _ConnectionTimeOut implements ApiFailures {
  const factory _ConnectionTimeOut({final String? message}) =
      _$ConnectionTimeOutImpl;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$ConnectionTimeOutImplCopyWith<_$ConnectionTimeOutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CancelImplCopyWith<$Res>
    implements $ApiFailuresCopyWith<$Res> {
  factory _$$CancelImplCopyWith(
          _$CancelImpl value, $Res Function(_$CancelImpl) then) =
      __$$CancelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$CancelImplCopyWithImpl<$Res>
    extends _$ApiFailuresCopyWithImpl<$Res, _$CancelImpl>
    implements _$$CancelImplCopyWith<$Res> {
  __$$CancelImplCopyWithImpl(
      _$CancelImpl _value, $Res Function(_$CancelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$CancelImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CancelImpl implements _Cancel {
  const _$CancelImpl({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'ApiFailures.cancel(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CancelImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CancelImplCopyWith<_$CancelImpl> get copyWith =>
      __$$CancelImplCopyWithImpl<_$CancelImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) connectionTimeOut,
    required TResult Function(String? message) cancel,
    required TResult Function(String? message) noResponse,
    required TResult Function(String? message) notFound,
    required TResult Function(String? message) internalError,
    required TResult Function(String? message) authFailed,
    required TResult Function(String? message) noConnection,
  }) {
    return cancel(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? connectionTimeOut,
    TResult? Function(String? message)? cancel,
    TResult? Function(String? message)? noResponse,
    TResult? Function(String? message)? notFound,
    TResult? Function(String? message)? internalError,
    TResult? Function(String? message)? authFailed,
    TResult? Function(String? message)? noConnection,
  }) {
    return cancel?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? connectionTimeOut,
    TResult Function(String? message)? cancel,
    TResult Function(String? message)? noResponse,
    TResult Function(String? message)? notFound,
    TResult Function(String? message)? internalError,
    TResult Function(String? message)? authFailed,
    TResult Function(String? message)? noConnection,
    required TResult orElse(),
  }) {
    if (cancel != null) {
      return cancel(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConnectionTimeOut value) connectionTimeOut,
    required TResult Function(_Cancel value) cancel,
    required TResult Function(_NoResponse value) noResponse,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_InternalError value) internalError,
    required TResult Function(_AuthFailed value) authFailed,
    required TResult Function(_NoConnection value) noConnection,
  }) {
    return cancel(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ConnectionTimeOut value)? connectionTimeOut,
    TResult? Function(_Cancel value)? cancel,
    TResult? Function(_NoResponse value)? noResponse,
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_InternalError value)? internalError,
    TResult? Function(_AuthFailed value)? authFailed,
    TResult? Function(_NoConnection value)? noConnection,
  }) {
    return cancel?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConnectionTimeOut value)? connectionTimeOut,
    TResult Function(_Cancel value)? cancel,
    TResult Function(_NoResponse value)? noResponse,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_InternalError value)? internalError,
    TResult Function(_AuthFailed value)? authFailed,
    TResult Function(_NoConnection value)? noConnection,
    required TResult orElse(),
  }) {
    if (cancel != null) {
      return cancel(this);
    }
    return orElse();
  }
}

abstract class _Cancel implements ApiFailures {
  const factory _Cancel({final String? message}) = _$CancelImpl;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$CancelImplCopyWith<_$CancelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoResponseImplCopyWith<$Res>
    implements $ApiFailuresCopyWith<$Res> {
  factory _$$NoResponseImplCopyWith(
          _$NoResponseImpl value, $Res Function(_$NoResponseImpl) then) =
      __$$NoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$NoResponseImplCopyWithImpl<$Res>
    extends _$ApiFailuresCopyWithImpl<$Res, _$NoResponseImpl>
    implements _$$NoResponseImplCopyWith<$Res> {
  __$$NoResponseImplCopyWithImpl(
      _$NoResponseImpl _value, $Res Function(_$NoResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$NoResponseImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$NoResponseImpl implements _NoResponse {
  const _$NoResponseImpl({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'ApiFailures.noResponse(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoResponseImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoResponseImplCopyWith<_$NoResponseImpl> get copyWith =>
      __$$NoResponseImplCopyWithImpl<_$NoResponseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) connectionTimeOut,
    required TResult Function(String? message) cancel,
    required TResult Function(String? message) noResponse,
    required TResult Function(String? message) notFound,
    required TResult Function(String? message) internalError,
    required TResult Function(String? message) authFailed,
    required TResult Function(String? message) noConnection,
  }) {
    return noResponse(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? connectionTimeOut,
    TResult? Function(String? message)? cancel,
    TResult? Function(String? message)? noResponse,
    TResult? Function(String? message)? notFound,
    TResult? Function(String? message)? internalError,
    TResult? Function(String? message)? authFailed,
    TResult? Function(String? message)? noConnection,
  }) {
    return noResponse?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? connectionTimeOut,
    TResult Function(String? message)? cancel,
    TResult Function(String? message)? noResponse,
    TResult Function(String? message)? notFound,
    TResult Function(String? message)? internalError,
    TResult Function(String? message)? authFailed,
    TResult Function(String? message)? noConnection,
    required TResult orElse(),
  }) {
    if (noResponse != null) {
      return noResponse(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConnectionTimeOut value) connectionTimeOut,
    required TResult Function(_Cancel value) cancel,
    required TResult Function(_NoResponse value) noResponse,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_InternalError value) internalError,
    required TResult Function(_AuthFailed value) authFailed,
    required TResult Function(_NoConnection value) noConnection,
  }) {
    return noResponse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ConnectionTimeOut value)? connectionTimeOut,
    TResult? Function(_Cancel value)? cancel,
    TResult? Function(_NoResponse value)? noResponse,
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_InternalError value)? internalError,
    TResult? Function(_AuthFailed value)? authFailed,
    TResult? Function(_NoConnection value)? noConnection,
  }) {
    return noResponse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConnectionTimeOut value)? connectionTimeOut,
    TResult Function(_Cancel value)? cancel,
    TResult Function(_NoResponse value)? noResponse,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_InternalError value)? internalError,
    TResult Function(_AuthFailed value)? authFailed,
    TResult Function(_NoConnection value)? noConnection,
    required TResult orElse(),
  }) {
    if (noResponse != null) {
      return noResponse(this);
    }
    return orElse();
  }
}

abstract class _NoResponse implements ApiFailures {
  const factory _NoResponse({final String? message}) = _$NoResponseImpl;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$NoResponseImplCopyWith<_$NoResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotFoundImplCopyWith<$Res>
    implements $ApiFailuresCopyWith<$Res> {
  factory _$$NotFoundImplCopyWith(
          _$NotFoundImpl value, $Res Function(_$NotFoundImpl) then) =
      __$$NotFoundImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$NotFoundImplCopyWithImpl<$Res>
    extends _$ApiFailuresCopyWithImpl<$Res, _$NotFoundImpl>
    implements _$$NotFoundImplCopyWith<$Res> {
  __$$NotFoundImplCopyWithImpl(
      _$NotFoundImpl _value, $Res Function(_$NotFoundImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$NotFoundImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$NotFoundImpl implements _NotFound {
  const _$NotFoundImpl({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'ApiFailures.notFound(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotFoundImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotFoundImplCopyWith<_$NotFoundImpl> get copyWith =>
      __$$NotFoundImplCopyWithImpl<_$NotFoundImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) connectionTimeOut,
    required TResult Function(String? message) cancel,
    required TResult Function(String? message) noResponse,
    required TResult Function(String? message) notFound,
    required TResult Function(String? message) internalError,
    required TResult Function(String? message) authFailed,
    required TResult Function(String? message) noConnection,
  }) {
    return notFound(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? connectionTimeOut,
    TResult? Function(String? message)? cancel,
    TResult? Function(String? message)? noResponse,
    TResult? Function(String? message)? notFound,
    TResult? Function(String? message)? internalError,
    TResult? Function(String? message)? authFailed,
    TResult? Function(String? message)? noConnection,
  }) {
    return notFound?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? connectionTimeOut,
    TResult Function(String? message)? cancel,
    TResult Function(String? message)? noResponse,
    TResult Function(String? message)? notFound,
    TResult Function(String? message)? internalError,
    TResult Function(String? message)? authFailed,
    TResult Function(String? message)? noConnection,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConnectionTimeOut value) connectionTimeOut,
    required TResult Function(_Cancel value) cancel,
    required TResult Function(_NoResponse value) noResponse,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_InternalError value) internalError,
    required TResult Function(_AuthFailed value) authFailed,
    required TResult Function(_NoConnection value) noConnection,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ConnectionTimeOut value)? connectionTimeOut,
    TResult? Function(_Cancel value)? cancel,
    TResult? Function(_NoResponse value)? noResponse,
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_InternalError value)? internalError,
    TResult? Function(_AuthFailed value)? authFailed,
    TResult? Function(_NoConnection value)? noConnection,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConnectionTimeOut value)? connectionTimeOut,
    TResult Function(_Cancel value)? cancel,
    TResult Function(_NoResponse value)? noResponse,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_InternalError value)? internalError,
    TResult Function(_AuthFailed value)? authFailed,
    TResult Function(_NoConnection value)? noConnection,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class _NotFound implements ApiFailures {
  const factory _NotFound({final String? message}) = _$NotFoundImpl;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$NotFoundImplCopyWith<_$NotFoundImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InternalErrorImplCopyWith<$Res>
    implements $ApiFailuresCopyWith<$Res> {
  factory _$$InternalErrorImplCopyWith(
          _$InternalErrorImpl value, $Res Function(_$InternalErrorImpl) then) =
      __$$InternalErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$InternalErrorImplCopyWithImpl<$Res>
    extends _$ApiFailuresCopyWithImpl<$Res, _$InternalErrorImpl>
    implements _$$InternalErrorImplCopyWith<$Res> {
  __$$InternalErrorImplCopyWithImpl(
      _$InternalErrorImpl _value, $Res Function(_$InternalErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$InternalErrorImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$InternalErrorImpl implements _InternalError {
  const _$InternalErrorImpl({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'ApiFailures.internalError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InternalErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InternalErrorImplCopyWith<_$InternalErrorImpl> get copyWith =>
      __$$InternalErrorImplCopyWithImpl<_$InternalErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) connectionTimeOut,
    required TResult Function(String? message) cancel,
    required TResult Function(String? message) noResponse,
    required TResult Function(String? message) notFound,
    required TResult Function(String? message) internalError,
    required TResult Function(String? message) authFailed,
    required TResult Function(String? message) noConnection,
  }) {
    return internalError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? connectionTimeOut,
    TResult? Function(String? message)? cancel,
    TResult? Function(String? message)? noResponse,
    TResult? Function(String? message)? notFound,
    TResult? Function(String? message)? internalError,
    TResult? Function(String? message)? authFailed,
    TResult? Function(String? message)? noConnection,
  }) {
    return internalError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? connectionTimeOut,
    TResult Function(String? message)? cancel,
    TResult Function(String? message)? noResponse,
    TResult Function(String? message)? notFound,
    TResult Function(String? message)? internalError,
    TResult Function(String? message)? authFailed,
    TResult Function(String? message)? noConnection,
    required TResult orElse(),
  }) {
    if (internalError != null) {
      return internalError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConnectionTimeOut value) connectionTimeOut,
    required TResult Function(_Cancel value) cancel,
    required TResult Function(_NoResponse value) noResponse,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_InternalError value) internalError,
    required TResult Function(_AuthFailed value) authFailed,
    required TResult Function(_NoConnection value) noConnection,
  }) {
    return internalError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ConnectionTimeOut value)? connectionTimeOut,
    TResult? Function(_Cancel value)? cancel,
    TResult? Function(_NoResponse value)? noResponse,
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_InternalError value)? internalError,
    TResult? Function(_AuthFailed value)? authFailed,
    TResult? Function(_NoConnection value)? noConnection,
  }) {
    return internalError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConnectionTimeOut value)? connectionTimeOut,
    TResult Function(_Cancel value)? cancel,
    TResult Function(_NoResponse value)? noResponse,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_InternalError value)? internalError,
    TResult Function(_AuthFailed value)? authFailed,
    TResult Function(_NoConnection value)? noConnection,
    required TResult orElse(),
  }) {
    if (internalError != null) {
      return internalError(this);
    }
    return orElse();
  }
}

abstract class _InternalError implements ApiFailures {
  const factory _InternalError({final String? message}) = _$InternalErrorImpl;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$InternalErrorImplCopyWith<_$InternalErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthFailedImplCopyWith<$Res>
    implements $ApiFailuresCopyWith<$Res> {
  factory _$$AuthFailedImplCopyWith(
          _$AuthFailedImpl value, $Res Function(_$AuthFailedImpl) then) =
      __$$AuthFailedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$AuthFailedImplCopyWithImpl<$Res>
    extends _$ApiFailuresCopyWithImpl<$Res, _$AuthFailedImpl>
    implements _$$AuthFailedImplCopyWith<$Res> {
  __$$AuthFailedImplCopyWithImpl(
      _$AuthFailedImpl _value, $Res Function(_$AuthFailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$AuthFailedImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AuthFailedImpl implements _AuthFailed {
  const _$AuthFailedImpl({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'ApiFailures.authFailed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthFailedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthFailedImplCopyWith<_$AuthFailedImpl> get copyWith =>
      __$$AuthFailedImplCopyWithImpl<_$AuthFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) connectionTimeOut,
    required TResult Function(String? message) cancel,
    required TResult Function(String? message) noResponse,
    required TResult Function(String? message) notFound,
    required TResult Function(String? message) internalError,
    required TResult Function(String? message) authFailed,
    required TResult Function(String? message) noConnection,
  }) {
    return authFailed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? connectionTimeOut,
    TResult? Function(String? message)? cancel,
    TResult? Function(String? message)? noResponse,
    TResult? Function(String? message)? notFound,
    TResult? Function(String? message)? internalError,
    TResult? Function(String? message)? authFailed,
    TResult? Function(String? message)? noConnection,
  }) {
    return authFailed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? connectionTimeOut,
    TResult Function(String? message)? cancel,
    TResult Function(String? message)? noResponse,
    TResult Function(String? message)? notFound,
    TResult Function(String? message)? internalError,
    TResult Function(String? message)? authFailed,
    TResult Function(String? message)? noConnection,
    required TResult orElse(),
  }) {
    if (authFailed != null) {
      return authFailed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConnectionTimeOut value) connectionTimeOut,
    required TResult Function(_Cancel value) cancel,
    required TResult Function(_NoResponse value) noResponse,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_InternalError value) internalError,
    required TResult Function(_AuthFailed value) authFailed,
    required TResult Function(_NoConnection value) noConnection,
  }) {
    return authFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ConnectionTimeOut value)? connectionTimeOut,
    TResult? Function(_Cancel value)? cancel,
    TResult? Function(_NoResponse value)? noResponse,
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_InternalError value)? internalError,
    TResult? Function(_AuthFailed value)? authFailed,
    TResult? Function(_NoConnection value)? noConnection,
  }) {
    return authFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConnectionTimeOut value)? connectionTimeOut,
    TResult Function(_Cancel value)? cancel,
    TResult Function(_NoResponse value)? noResponse,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_InternalError value)? internalError,
    TResult Function(_AuthFailed value)? authFailed,
    TResult Function(_NoConnection value)? noConnection,
    required TResult orElse(),
  }) {
    if (authFailed != null) {
      return authFailed(this);
    }
    return orElse();
  }
}

abstract class _AuthFailed implements ApiFailures {
  const factory _AuthFailed({final String? message}) = _$AuthFailedImpl;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$AuthFailedImplCopyWith<_$AuthFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoConnectionImplCopyWith<$Res>
    implements $ApiFailuresCopyWith<$Res> {
  factory _$$NoConnectionImplCopyWith(
          _$NoConnectionImpl value, $Res Function(_$NoConnectionImpl) then) =
      __$$NoConnectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$NoConnectionImplCopyWithImpl<$Res>
    extends _$ApiFailuresCopyWithImpl<$Res, _$NoConnectionImpl>
    implements _$$NoConnectionImplCopyWith<$Res> {
  __$$NoConnectionImplCopyWithImpl(
      _$NoConnectionImpl _value, $Res Function(_$NoConnectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$NoConnectionImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$NoConnectionImpl implements _NoConnection {
  const _$NoConnectionImpl({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'ApiFailures.noConnection(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoConnectionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NoConnectionImplCopyWith<_$NoConnectionImpl> get copyWith =>
      __$$NoConnectionImplCopyWithImpl<_$NoConnectionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) connectionTimeOut,
    required TResult Function(String? message) cancel,
    required TResult Function(String? message) noResponse,
    required TResult Function(String? message) notFound,
    required TResult Function(String? message) internalError,
    required TResult Function(String? message) authFailed,
    required TResult Function(String? message) noConnection,
  }) {
    return noConnection(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? message)? connectionTimeOut,
    TResult? Function(String? message)? cancel,
    TResult? Function(String? message)? noResponse,
    TResult? Function(String? message)? notFound,
    TResult? Function(String? message)? internalError,
    TResult? Function(String? message)? authFailed,
    TResult? Function(String? message)? noConnection,
  }) {
    return noConnection?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? connectionTimeOut,
    TResult Function(String? message)? cancel,
    TResult Function(String? message)? noResponse,
    TResult Function(String? message)? notFound,
    TResult Function(String? message)? internalError,
    TResult Function(String? message)? authFailed,
    TResult Function(String? message)? noConnection,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ConnectionTimeOut value) connectionTimeOut,
    required TResult Function(_Cancel value) cancel,
    required TResult Function(_NoResponse value) noResponse,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_InternalError value) internalError,
    required TResult Function(_AuthFailed value) authFailed,
    required TResult Function(_NoConnection value) noConnection,
  }) {
    return noConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ConnectionTimeOut value)? connectionTimeOut,
    TResult? Function(_Cancel value)? cancel,
    TResult? Function(_NoResponse value)? noResponse,
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_InternalError value)? internalError,
    TResult? Function(_AuthFailed value)? authFailed,
    TResult? Function(_NoConnection value)? noConnection,
  }) {
    return noConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ConnectionTimeOut value)? connectionTimeOut,
    TResult Function(_Cancel value)? cancel,
    TResult Function(_NoResponse value)? noResponse,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_InternalError value)? internalError,
    TResult Function(_AuthFailed value)? authFailed,
    TResult Function(_NoConnection value)? noConnection,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection(this);
    }
    return orElse();
  }
}

abstract class _NoConnection implements ApiFailures {
  const factory _NoConnection({final String? message}) = _$NoConnectionImpl;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  _$$NoConnectionImplCopyWith<_$NoConnectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
