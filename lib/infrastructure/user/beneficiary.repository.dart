import 'package:alaman/application/provider/hive.setting.provider.dart';
import 'package:alaman/application/provider/user.repository.provider.dart';
import 'package:alaman/constants.dart';
import 'package:alaman/domain/alamanreqeust/alaman.request.model.dart';
import 'package:alaman/domain/errorhandler/dio_handler.dart';
import 'package:alaman/domain/failures/api.failures.dart';
import 'package:alaman/domain/trainingreqeust/model/training.request.model.dart';
import 'package:alaman/domain/user/interface/i.beneficiary.repository.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BeneficiaryRepository implements IBeneficiaryRepository {
  final Ref ref;
  var dio = Dio();

  BeneficiaryRepository({required this.ref});
  @override
  Future<Either<ApiFailures, dynamic>> getAlamanReqeusts({String? id}) async {
    final userSetting = ref.read(settingHiveNotifierProvider);

    try {
      final result = await dio.get("$baseUrl/alamanRequest/getRequests?api_token=${userSetting!.token}");

      if (result.data['AZSVR'] == "SUCCESS") {
        if (id == null) {
          Map<String, dynamic> map = result.data;
          List<dynamic> data = map["AlamanRequests"];
          List<AlamanRequestModel> response = data.map((e) => AlamanRequestModel.fromJson(e)).toList();
          return right(response);
        } else {
          var keys = result.data['AlamanRequests'].keys;
          AlamanRequestModel model = AlamanRequestModel.fromJson(result.data["AlamanRequests"][keys.first]);
          return right(model);
        }
      } else {
        return left(ApiFailures.authFailed(message: result.data['Reason']));
      }
    } on DioException catch (error) {
      return DioExceptionHandler.handleDioException(error);
    }
  }

  @override
  Future<Either<ApiFailures, dynamic>> getTrainingReqeusts({String? id}) async {
    final userSetting = ref.read(settingHiveNotifierProvider);

    try {
      final result = await dio.get(id == null ? "$baseUrl/trainingRequest/getRequests?api_token=${userSetting!.token}" : "$baseUrl/trainingRequest/getRequests?id=$id&api_token=${userSetting!.token}");
      if (result.data['AZSVR'] == "SUCCESS") {
        if (id == null) {
          Map<String, dynamic> map = result.data;
          List<dynamic> data = map["TrainingRequests"];
          List<TrainingRequestModel> response = data.map((e) => TrainingRequestModel.fromJson(e)).toList();
          return right(response);
        } else {
          var keys = result.data['TrainingRequests'].keys;
          TrainingRequestModel model = TrainingRequestModel.fromJson(result.data["TrainingRequests"][keys.first]);
          return right(model);
        }
      } else {
        return left(ApiFailures.authFailed(message: result.data['Reason']));
      }
    } on DioException catch (error) {
      return DioExceptionHandler.handleDioException(error);
    }
  }

  @override
  Future<Either<ApiFailures, dynamic>> placeAlamanReqeusts({String? notes, int? sercviceID}) async {
    final userSetting = ref.read(settingHiveNotifierProvider);

    try {
      final result = await dio.get("$baseUrl/alamanRequest/placeRequest?alaman_service_id=$sercviceID&notes=$notes&api_token=${userSetting!.token}");
      if (result.data['AZSVR'] == "SUCCESS") {
        return right(result.data);
      } else {
        return left(ApiFailures.authFailed(message: result.data['Reason']));
      }
    } on DioException catch (error) {
      return DioExceptionHandler.handleDioException(error);
    }
  }

  @override
  Future<Either<ApiFailures, dynamic>> placeTrainingReqeusts({String? notes, int? programId}) async {
    final userSetting = ref.read(settingHiveNotifierProvider);

    try {
      final result = await dio.get("$baseUrl/trainingRequest/placeRequest?training_program_id=$programId&notes=$notes&api_token=${userSetting!.token}");
      if (result.data['AZSVR'] == "SUCCESS") {
        return right(result.data);
      } else {
        return left(ApiFailures.authFailed(message: result.data['Reason']));
      }
    } on DioException catch (error) {
      return DioExceptionHandler.handleDioException(error);
    }
  }

  @override
  Future<Either<ApiFailures, Unit>> setAvatar({int? id}) async {
    final setting = ref.read(settingHiveNotifierProvider);

    try {
      final result = await dio.get("$baseUrl/user/setAvatar/$id?api_token=${setting!.token}");
      if (result.data['AZSVR'] == "SUCCESS") {
        setting.isavatar = true;
        ref.read(settingHiveNotifierProvider.notifier).addItem(setting);
        final refresh = await ref.refresh(getProfileProvider.future);
        return right(unit);
      } else {
        return left(ApiFailures.authFailed(message: result.data['Reason']));
      }
    } on DioException catch (error) {
      return DioExceptionHandler.handleDioException(error);
    }
  }
}
