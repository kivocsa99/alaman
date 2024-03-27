import 'package:alaman/application/provider/hive.login.provider.dart';
import 'package:alaman/application/provider/hive.register.provider.dart';
import 'package:alaman/application/provider/hive.setting.provider.dart';
import 'package:alaman/constants.dart';
import 'package:alaman/domain/auth/interface/i.auth.repository.dart';
import 'package:alaman/domain/failures/api.failures.dart';
import 'package:alaman/domain/userregistration/user.registration.model.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

//ali send role with sign in
class AuthRepository implements IAuthRepository {
  final Box settings = Hive.box('setting');
  final Box register = Hive.box('register');
  final Ref? ref;
  AuthRepository({required this.ref});
  @override
  Future<Either<ApiFailures, String>> signInWithEmailAndPassword(
      {required String phone, required String password}) async {
    var dio = Dio();
    final setting = ref!.read(settingHiveNotifierProvider);
    try {
      final result = await dio
          .get("$baseUrl/user/getToken?phone=$phone&password=$password");
      print(result.realUri);
      if (result.data['AZSVR'] == "SUCCESS") {
        setting!
          ..isLoggedIn = true
          ..token = result.data["API_Token"]
          ..role = result.data["AccountType"];
        await ref!.read(settingHiveNotifierProvider.notifier).addItem(setting);
        print(ref!.read(settingHiveNotifierProvider));
        return right(result.data["API_Token"]);
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
  Future<Either<ApiFailures, String>> signUpWithEmailAndPassword(
      {required UserRegistration model}) async {
    var dio = Dio();
    try {
      final result = await dio.get(
          "$baseUrl/user/register?name=${model.name}&phone=${model.phone}&password=${model.password}&account_type=${model.role}&national_id_number=${model.nationalIdNumber}&address=${model.address}&gender_id=${model.genderId}&email=${model.email}&city_id=${model.cityId}&birthdate=${model.birthDate}");

      if (result.data['AZSVR'] == "SUCCESS") {
        final userSettings = ref!.read(settingHiveNotifierProvider);

        userSettings!
          ..isLoggedIn = true
          ..role = result.data["AccountType"]
          ..token = result.data["API_Token"];
        await ref!
            .read(settingHiveNotifierProvider.notifier)
            .addItem(userSettings);
        return right(result.data["API_Token"]);
      } else {
        return left(ApiFailures.authFailed(message: result.data['Reason']));
      }
    } on DioException catch (error) {
      print(error.stackTrace);
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
  Future<void> logOut() async {
    return await Future.sync((() async {
      await ref!.read(settingHiveNotifierProvider.notifier).deleteAll();
      await ref!.read(loginHiveNotifierProvider.notifier).deleteAll();
      await ref!.read(registerHiveNotifierProvider.notifier).deleteAll();
    }));
  }
}
