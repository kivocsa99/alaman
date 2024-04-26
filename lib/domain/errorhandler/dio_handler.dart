import 'package:alaman/domain/failures/api.failures.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';

class DioExceptionHandler {
  static Either<ApiFailures, T> handleDioException<T>(DioException error) {
    final response = error.response;
    final reason = response != null && response.data != null ? response.data["Reason"] : "Unknown error";

    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        return left(ApiFailures.connectionTimeOut(message: reason));
      case DioException.requestCancelled:
        return left(ApiFailures.cancel(message: reason));
      case DioExceptionType.badResponse:
        return left(ApiFailures.noResponse(message: reason));
      default:
        return left(ApiFailures.noResponse(message: reason));
    }
  }
}
