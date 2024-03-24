// ignore_for_file: depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/i.failure.dart';

part 'api.failures.freezed.dart';

@freezed
class ApiFailures with _$ApiFailures implements IFailure {
  const factory ApiFailures.connectionTimeOut({String? message}) = _ConnectionTimeOut;
  const factory ApiFailures.cancel({String? message}) = _Cancel;
  const factory ApiFailures.noResponse({String? message}) = _NoResponse;
  const factory ApiFailures.notFound({String? message}) = _NotFound;
  const factory ApiFailures.internalError({String? message}) = _InternalError;
  const factory ApiFailures.authFailed({String? message}) = _AuthFailed;
  const factory ApiFailures.noConnection({String? message}) = _NoConnection;
}
