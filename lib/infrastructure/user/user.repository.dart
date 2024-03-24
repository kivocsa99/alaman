import 'dart:developer';

import 'package:alaman/application/provider/hive.setting.provider.dart';
import 'package:alaman/constants.dart';
import 'package:alaman/domain/failures/api.failures.dart';
import 'package:alaman/domain/generic/model/generic.model.dart';
import 'package:alaman/domain/news/model/news.model.dart';
import 'package:alaman/domain/product/model/product.model.dart';
import 'package:alaman/domain/user/interface/i.user.repository.dart';
import 'package:alaman/domain/user/model/beneficiary/beneficiary.model.dart';
import 'package:alaman/domain/user/model/donor/shared.donor.model.dart';
import 'package:alaman/domain/usersetting/model/user.setting.model.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tuple/tuple.dart';

class UserRepository implements IUserRepository {
  final Ref ref;
  var dio = Dio();

  final UserSettings userSettings = Hive.box('setting').getAt(0);

  UserRepository({required this.ref});

  @override
  Future<Either<ApiFailures, dynamic>> getMyProfile() async {
    try {
      log(userSettings.token.toString());
      final result = await dio
          .get("$baseUrl/user/getMyProfile?api_token=${userSettings.token}");
      if (result.data['AZSVR'] == "SUCCESS") {
        var model;

        if (result.data["User"]['account_type'] == "Beneficiary") {
          model = BeneficiaryModel.fromJson(result.data["User"]);
        } else if (result.data["User"]['account_type'] == "Donor") {
          model = SharedDonorModel.fromJson(result.data);
        } else {}
        userSettings.role = result.data["User"]['account_type'];
        ref.read(settingHiveNotifierProvider.notifier).addItem(userSettings);
        return right(model);
      } else {
        return left(ApiFailures.authFailed(message: result.data['Reason']));
      }
    } on DioException catch (error) {
      final String reason = error.response!.data["Reason"];
      print(error.stackTrace);
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
  Future<Either<ApiFailures, BeneficiaryModel>> getProfileById(
      {String? profileId}) async {
    try {
      final result = await dio.get(
          "$baseUrl/user/getProfile?id=$profileId&api_token=${userSettings.token}");
      if (result.data['AZSVR'] == "SUCCESS") {
        final model = BeneficiaryModel.fromJson(result.data["User"]);
        return right(model);
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
  Future<Either<ApiFailures, dynamic>> updateProfile() {
    // TODO: implement updateProfile
    throw UnimplementedError();
  }

  @override
  Future<Either<ApiFailures, List<NewsModel>>> getNews({int page = 1}) async {
    try {
      final result = await dio.get(
          "$baseUrl/misc/getBlogPosts?page=$page&api_token=${userSettings.token}");
      if (result.data['AZSVR'] == "SUCCESS") {
        Map<String, dynamic> map = result.data;
        List<dynamic> data = map["BlogPosts"]["data"];
        List<NewsModel> response =
            data.map((e) => NewsModel.fromJson(e)).toList();
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
  Future<Either<ApiFailures, GenericModel>> getGeneric() async {
    try {
      final result = await dio.get(
          "$baseUrl/misc/getGenericFillables?api_token=${userSettings.token}");
      if (result.data['AZSVR'] == "SUCCESS") {
        log(result.realUri.toString());
        GenericModel response = GenericModel.fromJson(result.data);
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
  Future<Either<ApiFailures, List<ProductModel>>> getProducts() async {
    try {
      final result = await dio.get(
          "$baseUrl/misc/getProducts?page=1&api_token=${userSettings.token}");
      if (result.data['AZSVR'] == "SUCCESS") {
        Map<String, dynamic> map = result.data;
        List<dynamic> data = map["Products"]["data"];
        List<ProductModel> response =
            data.map((e) => ProductModel.fromJson(e)).toList();
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
  Future<Either<ApiFailures, String>> initDonations(
      {int? donationTypeId,
      int? paymentMethodId,
      num? totalAmount,
      Map<String, dynamic>? location,
      int? isRecurring,
      String? startDate,
      String? endDate,
      int? donationFrequencyId,
      String? notes,
      String? mouId}) async {
    try {
      final result = await dio.get(
          "$baseUrl/donation/initDonation?donation_type_id=${donationTypeId.toString()}&payment_method_id=${paymentMethodId.toString()}&total_amount=${totalAmount.toString()}&location=${location.toString()}&is_recurring=${isRecurring.toString()}&start_date=2024-03-01&end_date=2024-04-01&donation_frequency_id=1&notes=I love donating&mou_id=1&beneficiaries[]=1&api_token=${userSettings.token}");
      if (result.data['AZSVR'] == "SUCCESS") {
        log(result.realUri.toString());

        return right(result.data['AZSVR']);
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
  Future<Either<ApiFailures, Tuple2<List<BeneficiaryModel>, String?>>>
      searchBeneficiaries({
    int? genderId,
    int? cityId,
    int? educationalYearId,
    String? age,
    int? scholarshipTypeId,
  }) async {
    try {
      final result = await dio.get(
          "$baseUrl/beneficiary/search?gender_id=$genderId&city_id=$cityId&educational_year_id=$educationalYearId&age=$age&scholarship_type_id=$scholarshipTypeId&api_token=${userSettings.token}");
      if (result.data['AZSVR'] == "SUCCESS") {
        Map<String, dynamic> map = result.data;
        log(result.realUri.toString());
        List<dynamic> data = map["Beneficiaries"]["data"];
        List<BeneficiaryModel> response =
            data.map((e) => BeneficiaryModel.fromJson(e)).toList();
        String? nextUrl = map["Beneficiaries"]["next_page_url"];
        final Tuple2<List<BeneficiaryModel>, String?> finaldata =
            Tuple2(response, nextUrl);
        return right(finaldata);
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
