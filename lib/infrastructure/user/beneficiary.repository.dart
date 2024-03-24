import 'package:alaman/constants.dart';
import 'package:alaman/domain/alamanreqeust/alaman.request.model.dart';
import 'package:alaman/domain/failures/api.failures.dart';
import 'package:alaman/domain/trainingreqeust/model/training.request.model.dart';
import 'package:alaman/domain/user/interface/i.beneficiary.repository.dart';
import 'package:alaman/domain/usersetting/model/user.setting.model.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BeneficiaryRepository implements IBeneficiaryRepository {
  final Ref ref;
  var dio = Dio();
  final UserSettings userSettings = Hive.box('setting').getAt(0);

  BeneficiaryRepository({required this.ref});
  @override
  Future<Either<ApiFailures, List<AlamanRequestModel>>>
      getAlamanReqeusts() async {
    try {
      final result = await dio.get(
          "$baseUrl/alamanRequest/getRequests?api_token=${userSettings.token}");
      if (result.data['AZSVR'] == "SUCCESS") {
        Map<String, dynamic> map = result.data;
        List<dynamic> data = map["AlamanRequests"];
        List<AlamanRequestModel> response =
            data.map((e) => AlamanRequestModel.fromJson(e)).toList();
        return right(response);
      } else {
        return left(ApiFailures.authFailed(message: result.data['Reason']));
      }
    } on DioException catch (error) {
      final String reason = error.response!.data["Reason"];
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

  @override
  Future<Either<ApiFailures, List<TrainingRequestModel>>>
      getTrainingReqeusts() async {
    try {
      final result = await dio.get(
          "$baseUrl/trainingRequest/getRequests?api_token=${userSettings.token}");
      if (result.data['AZSVR'] == "SUCCESS") {
        Map<String, dynamic> map = result.data;
        List<dynamic> data = map["TrainingRequests"];
        List<TrainingRequestModel> response =
            data.map((e) => TrainingRequestModel.fromJson(e)).toList();
        return right(response);
      } else {
        return left(ApiFailures.authFailed(message: result.data['Reason']));
      }
    } on DioException catch (error) {
      final String reason = error.response!.data["Reason"];
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

  @override
  Future<Either<ApiFailures, dynamic>> placeAlamanReqeusts(
      {String? notes, int? sercviceID}) async {
    try {
      final result = await dio.get(
          "$baseUrl/alamanRequest/placeRequest?alaman_service_id=$sercviceID&notes=$notes&api_token=${userSettings.token}");
      if (result.data['AZSVR'] == "SUCCESS") {
        return right(result.data);
      } else {
        return left(ApiFailures.authFailed(message: result.data['Reason']));
      }
    } on DioException catch (error) {
      final String reason = error.response!.data["Reason"];
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

  @override
  Future<Either<ApiFailures, dynamic>> placeTrainingReqeusts(
      {String? notes, int? programId}) async {
    try {
      final result = await dio.get(
          "$baseUrl/trainingRequest/placeRequest?training_program_id=$programId&notes=$notes&api_token=${userSettings.token}");
      if (result.data['AZSVR'] == "SUCCESS") {
        return right(result.data);
      } else {
        return left(ApiFailures.authFailed(message: result.data['Reason']));
      }
    } on DioException catch (error) {
      final String reason = error.response!.data["Reason"];
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

  @override
  Future<Either<ApiFailures, Unit>> setAvatar({int? id}) async {
    try {
      final result = await dio.get("$baseUrl/user/setAvatar/$id");
      if (result.data['AZSVR'] == "SUCCESS") {
        return right(unit);
      } else {
        return left(ApiFailures.authFailed(message: result.data['Reason']));
      }
    } on DioException catch (error) {
      final String reason = error.response!.data["Reason"];
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
}
