import 'dart:convert';
import 'dart:developer';

import 'package:alaman/application/provider/hive.login.provider.dart';
import 'package:alaman/application/provider/hive.register.provider.dart';
import 'package:alaman/application/provider/hive.setting.provider.dart';
import 'package:alaman/application/provider/user.repository.provider.dart';
import 'package:alaman/constants.dart';
import 'package:alaman/domain/alamanreqeust/alaman.request.model.dart';
import 'package:alaman/domain/campaigns/model/campaign.model.dart';
import 'package:alaman/domain/errorhandler/dio_handler.dart';
import 'package:alaman/domain/failures/api.failures.dart';
import 'package:alaman/domain/generic/model/generic.model.dart';
import 'package:alaman/domain/meetinghistory/model/meeting.history.model.dart';
import 'package:alaman/domain/news/model/news.model.dart';
import 'package:alaman/domain/product/model/product.model.dart';
import 'package:alaman/domain/taxexempetion/model/tax.model.dart';
import 'package:alaman/domain/trainingreqeust/model/training.request.model.dart';
import 'package:alaman/domain/user/interface/i.user.repository.dart';
import 'package:alaman/domain/user/model/beneficiary/beneficiary.model.dart';
import 'package:alaman/domain/user/model/donor/shared.donor.model.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tuple/tuple.dart';

class UserRepository implements IUserRepository {
  final Ref? ref;
  var dio = Dio();

  UserRepository({this.ref});

  @override
  Future<Either<ApiFailures, dynamic>> getMyProfile() async {
    final userSetting = ref!.read(settingHiveNotifierProvider);
    try {
      final result = await dio.get("$baseUrl/user/getMyProfile?api_token=${userSetting!.token}");
      log(result.requestOptions.uri.toString());

      if (result.data['AZSVR'] == "SUCCESS") {
        var model;

        if (result.data["User"]['account_type'] == "Beneficiary") {
          model = BeneficiaryModel.fromJson(result.data["User"]);
        } else {
          model = SharedDonorModel.fromJson(result.data);
        }
        userSetting.role = result.data["User"]['account_type'];
        ref!.read(settingHiveNotifierProvider.notifier).addItem(userSetting);
        return right(model);
      } else {
        return left(ApiFailures.authFailed(message: result.data['Reason']));
      }
    } on DioException catch (error) {
      return DioExceptionHandler.handleDioException(error);
    }
  }

  @override
  Future<Either<ApiFailures, BeneficiaryModel>> getProfileById({String? profileId}) async {
    final userSetting = ref!.read(settingHiveNotifierProvider);

    try {
      final result = await dio.get("$baseUrl/user/getProfile?id=$profileId&api_token=${userSetting!.token}");
      print(result.requestOptions.uri);
      if (result.data['AZSVR'] == "SUCCESS") {
        final model = BeneficiaryModel.fromJson(result.data["User"]);
        return right(model);
      } else {
        return left(ApiFailures.authFailed(message: result.data['Reason']));
      }
    } on DioException catch (error) {
      return DioExceptionHandler.handleDioException(error);
    }
  }

  @override
  Future<Either<ApiFailures, dynamic>> updateProfile({String? value, String? field}) async {
    final userSetting = ref!.read(settingHiveNotifierProvider);

    try {
      final result = await dio.get("$baseUrl/user/updateProfile?$field=$value&api_token=${userSetting!.token}");
      if (result.data['AZSVR'] == "SUCCESS") {
        final refresh = await ref!.refresh(getProfileProvider.future);
        return right(result.data);
      } else {
        return left(ApiFailures.authFailed(message: result.data['Reason']));
      }
    } on DioException catch (error) {
      return DioExceptionHandler.handleDioException(error);
    }
  }

  @override
  Future<Either<ApiFailures, List<NewsModel>>> getNews({int page = 1}) async {
    final userSetting = ref!.read(settingHiveNotifierProvider);

    try {
      final result = await dio.get("$baseUrl/misc/getBlogPosts?page=$page&api_token=${userSetting!.token}");
      if (result.data['AZSVR'] == "SUCCESS") {
        Map<String, dynamic> map = result.data;
        List<dynamic> data = map["BlogPosts"]["data"];
        List<NewsModel> response = data.map((e) => NewsModel.fromJson(e)).toList();
        return right(response);
      } else {
        return left(ApiFailures.authFailed(message: result.data['Reason']));
      }
    } on DioException catch (error) {
      return DioExceptionHandler.handleDioException(error);
    }
  }

  @override
  Future<Either<ApiFailures, GenericModel>> getGeneric() async {
    try {
      final result = await dio.get("$baseUrl/misc/getGenericFillables");
      if (result.data['AZSVR'] == "SUCCESS") {
        log(result.realUri.toString());
        GenericModel response = GenericModel.fromJson(result.data);

        return right(response);
      } else {
        return left(ApiFailures.authFailed(message: result.data['Reason']));
      }
    } on DioException catch (error) {
      return DioExceptionHandler.handleDioException(error);
    }
  }

  @override
  Future<Either<ApiFailures, List<ProductModel>>> getProducts() async {
    final userSetting = ref!.read(settingHiveNotifierProvider);

    try {
      final result = await dio.get("$baseUrl/misc/getProducts?page=1&api_token=${userSetting!.token}");
      if (result.data['AZSVR'] == "SUCCESS") {
        Map<String, dynamic> map = result.data;
        List<dynamic> data = map["Products"]["data"];
        List<ProductModel> response = data.map((e) => ProductModel.fromJson(e)).toList();
        return right(response);
      } else {
        return left(ApiFailures.authFailed(message: result.data['Reason']));
      }
    } on DioException catch (error) {
      return DioExceptionHandler.handleDioException(error);
    }
  }

  @override
  Future<Either<ApiFailures, dynamic>> initDonations({
    int? donationTypeId,
    int? paymentMethodId,
    num? totalAmount,
    Map<String, dynamic>? location,
    int? isRecurring,
    String? startDate,
    String? endDate,
    int? donationFrequencyId,
    String? notes,
    String? mouId,
    List<int>? beneficiaryIds,
  }) async {
    final userSetting = ref!.read(settingHiveNotifierProvider);

    var queryParams = StringBuffer("$baseUrl/donation/initDonation?");

    if (donationTypeId != null) {
      queryParams.write("donation_type_id=$donationTypeId&");
    }
    if (paymentMethodId != null) {
      queryParams.write("payment_method_id=$paymentMethodId&");
    }
    if (totalAmount != null) queryParams.write("total_amount=$totalAmount&");
    if (location != null) {
      queryParams.write("location=${Uri.encodeComponent(jsonEncode(location))}&");
    }
    if (isRecurring != null) queryParams.write("is_recurring=$isRecurring&");
    if (startDate != null) queryParams.write("start_date=$startDate&");
    if (endDate != null) queryParams.write("end_date=$endDate&");
    if (donationFrequencyId != null) {
      queryParams.write("donation_frequency_id=$donationFrequencyId&");
    }
    if (notes != null) {
      queryParams.write("notes=${Uri.encodeComponent(notes)}&");
    }
    if (mouId != null) queryParams.write("mou_id=$mouId&");
    if (beneficiaryIds != null && beneficiaryIds.isNotEmpty) {
      for (var id in beneficiaryIds) {
        queryParams.write("beneficiaries[]=$id&");
      }
    }

    queryParams.write("api_token=${userSetting?.token}");

    String finalUrl = queryParams.toString();

    try {
      final result = await dio.get(finalUrl);
      print(result.requestOptions.uri);
      if (result.data['AZSVR'] == "SUCCESS") {
        final refresh = await ref!.refresh(getProfileProvider.future);
        return right(result.data);
      } else {
        return left(ApiFailures.authFailed(message: result.data['Reason']));
      }
    } on DioException catch (error) {
      return DioExceptionHandler.handleDioException(error);
    }
  }

  @override
  Future<Either<ApiFailures, Tuple3<List<BeneficiaryModel>, String?, bool?>>> searchBeneficiaries({
    int? genderId,
    int? cityId,
    int? educationalYearId,
    String? age,
    int? scholarshipTypeId,
  }) async {
    final userSetting = ref!.read(settingHiveNotifierProvider);

    // Start building the URL with the base path
    var queryParams = StringBuffer("$baseUrl/beneficiary/search?");

    // Append each parameter if it's not null
    if (genderId != null) queryParams.write("gender_id=$genderId&");
    if (cityId != null) queryParams.write("city_id=$cityId&");
    if (educationalYearId != null) {
      queryParams.write("educational_year_id=$educationalYearId&");
    }
    if (age != null) queryParams.write("age=$age&");
    if (scholarshipTypeId != null) {
      queryParams.write("scholarship_type_id=$scholarshipTypeId&");
    }

    // Always append the token at the end
    queryParams.write("api_token=${userSetting?.token}");

    // Final URL
    String finalUrl = queryParams.toString();

    try {
      final result = await dio.get(finalUrl);
      log(result.requestOptions.uri.toString()); // Ensure logging is appropriate for your use case
      if (result.data['AZSVR'] == "SUCCESS") {
        Map<String, dynamic> map = result.data;
        List<dynamic> data = map["Beneficiaries"]["data"];
        List<BeneficiaryModel> response = data.map((e) => BeneficiaryModel.fromJson(e)).toList();
        String? nextUrl = map["Beneficiaries"]["next_page_url"];
        bool? iscriteria = map["search_adjusted"];
        final Tuple3<List<BeneficiaryModel>, String?, bool?> finalData = Tuple3(response, nextUrl, iscriteria);
        return right(finalData);
      } else {
        return left(ApiFailures.authFailed(message: result.data['Reason']));
      }
    } on DioException catch (error) {
      return DioExceptionHandler.handleDioException(error);
    }
  }

  @override
  Future<Either<ApiFailures, Tuple2<List<CampaignModel>, String?>>> getCampaigns({int page = 1}) async {
    final userSetting = ref!.read(settingHiveNotifierProvider);

    try {
      final result = await dio.get("$baseUrl/misc/getCampaigns?api_token=${userSetting!.token}");
      if (result.data['AZSVR'] == "SUCCESS") {
        Map<String, dynamic> map = result.data;
        log(result.realUri.toString());
        List<dynamic> data = map["Campaigns"]["data"];
        List<CampaignModel> response = data.map((e) => CampaignModel.fromJson(e)).toList();
        String? nextUrl = map["Campaigns"]["next_page_url"];
        final Tuple2<List<CampaignModel>, String?> finaldata = Tuple2(response, nextUrl);
        return right(finaldata);
      } else {
        return left(ApiFailures.authFailed(message: result.data['Reason']));
      }
    } on DioException catch (error) {
      return DioExceptionHandler.handleDioException(error);
    }
  }

  @override
  Future<Either<ApiFailures, List<AlamanRequestModel>>> getservices() async {
    final userSetting = ref!.read(settingHiveNotifierProvider);

    try {
      final result = await dio.get("$baseUrl/alamanRequest/getRequests?api_token=${userSetting!.token}");
      if (result.data['AZSVR'] == "SUCCESS") {
        Map<String, dynamic> map = result.data;
        List<dynamic> data = map["AlamanRequests"];
        List<AlamanRequestModel> response = data.map((e) => AlamanRequestModel.fromJson(e)).toList();
        return right(response);
      } else {
        return left(ApiFailures.authFailed(message: result.data['Reason']));
      }
    } on DioException catch (error) {
      return DioExceptionHandler.handleDioException(error);
    }
  }

  @override
  Future<Either<ApiFailures, List<TrainingRequestModel>>> gettraining() async {
    final userSetting = ref!.read(settingHiveNotifierProvider);

    try {
      final result = await dio.get("$baseUrl/trainingRequest/getRequests?api_token=${userSetting!.token}");
      print(result.requestOptions.uri);
      if (result.data['AZSVR'] == "SUCCESS") {
        Map<String, dynamic> map = result.data;
        List<dynamic> data = map["TrainingRequests"];
        List<TrainingRequestModel> response = data.map((e) => TrainingRequestModel.fromJson(e)).toList();
        return right(response);
      } else {
        return left(ApiFailures.authFailed(message: result.data['Reason']));
      }
    } on DioException catch (error) {
      return DioExceptionHandler.handleDioException(error);
    }
  }

  @override
  Future<Either<ApiFailures, dynamic>> deleteAccount() async {
    final userSetting = ref!.read(settingHiveNotifierProvider);

    try {
      final result = await dio.get("$baseUrl/user/removeMyAccount?api_token=${userSetting!.token}");
      if (result.data['AZSVR'] == "SUCCESS") {
        await Future.sync((() async {
          await ref!.read(settingHiveNotifierProvider.notifier).deleteAll();
          await ref!.read(loginHiveNotifierProvider.notifier).deleteAll();
          await ref!.read(registerHiveNotifierProvider.notifier).deleteAll();
        }));
        return right(result.data);
      } else {
        return left(ApiFailures.authFailed(message: result.data['Reason']));
      }
    } on DioException catch (error) {
      return DioExceptionHandler.handleDioException(error);
    }
  }

  @override
  Future<Either<ApiFailures, Tuple2<List<String>, num>>> getrecurringSchedule({double? amount, String? endate, String? startDate, String? donationfrequencyid}) async {
    final userSetting = ref!.read(settingHiveNotifierProvider);

    try {
      final result = await dio.get(
          "https://aeservice.appchecker.net/api/v1/meps/getSchedule?total_amount=$amount&start_date=$startDate&end_date=$endate&donation_frequency_id=$donationfrequencyid&api_token=${userSetting!.token}");
      print(result.requestOptions.uri);
      if (result.data['AZSVR'] == "SUCCESS") {
        Map<String, dynamic> map = result.data;
        log(result.realUri.toString());
        List<dynamic> data = map["Schedule"];
        List<String> stringData = data.map((e) => e.toString()).toList();
        num amount = map["AmountPerPayment"];
        final Tuple2<List<String>, num> finaldata = Tuple2(stringData, amount);
        return right(finaldata);
      } else {
        return left(ApiFailures.authFailed(message: result.data['Reason']));
      }
    } on DioException catch (error) {
      print(error.requestOptions.uri);
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
  Future<Either<ApiFailures, String>> checkPhoneNumber({required String phone, required String? value}) async {
    var dio = Dio();
    String? url = value == "phone" ? "PhoneNumber" : "email".replaceFirst("e", "E");
    try {
      final result = await dio.get("$baseUrl/user/validate$url?$value=$phone");

      if (result.data['AZSVR'] == "SUCCESS") {
        return right(result.data["AZSVR"]);
      } else {
        return left(ApiFailures.authFailed(message: result.data['AZSVR']));
      }
    } on DioException catch (error) {
      return DioExceptionHandler.handleDioException(error);
    }
  }

  @override
  Future<Either<ApiFailures, dynamic>> newMeeting({
    String? date,
    String? time,
    String? duration,
    String? meetingMethodsId,
    String? notes,
    String? beneficiaryId,
  }) async {
    final userSetting = ref!.read(settingHiveNotifierProvider);

    try {
      final result = await dio.get(
          "$baseUrl/followUpMeeting/newRequest?beneficiary_id=$beneficiaryId&meeting_method_id=$meetingMethodsId&duration=$duration&date=$date&time=$time&notes=$notes&api_token=${userSetting!.token}");
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
  Future<Either<ApiFailures, List<MeetingHistoryModel>>> getMeetingHistory() async {
    final userSetting = ref!.read(settingHiveNotifierProvider);

    try {
      final result = await dio.get("$baseUrl/followUpMeeting/getHistory?api_token=${userSetting!.token}");
      if (result.data['AZSVR'] == "SUCCESS") {
        Map<String, dynamic> map = result.data;
        List<dynamic> data = map["FollowUpMeetingRequests"];
        List<MeetingHistoryModel> response = data.map((e) => MeetingHistoryModel.fromJson(e)).toList();
        return right(response);
      } else {
        return left(ApiFailures.authFailed(message: result.data['Reason']));
      }
    } on DioException catch (error) {
      return DioExceptionHandler.handleDioException(error);
    }
  }

  @override
  Future<Either<ApiFailures, dynamic>> getTaxesRequest({String? id}) async {
    final userSetting = ref!.read(settingHiveNotifierProvider);
    try {
      final result =
          await dio.get(id == null ? "$baseUrl/taxExemptionRequest/getRequests?api_token=${userSetting!.token}" : "$baseUrl/taxExemptionRequest/getRequests?id=$id&api_token=${userSetting!.token}");
      if (result.data['AZSVR'] == "SUCCESS") {
        if (id == null) {
          TaxModel response = TaxModel.fromJson(result.data["TaxExemptionRequests"]["1"]);
          return right(response);
        } else {
          Map<String, dynamic> map = result.data;
          List<dynamic> data = map["TaxExemptionRequests"];
          List<TaxModel> response = data.map((e) => TaxModel.fromJson(e)).toList();
          return right(response);
        }
      } else {
        return left(ApiFailures.authFailed(message: result.data['Reason']));
      }
    } on DioException catch (error) {
      return DioExceptionHandler.handleDioException(error);
    }
  }

  @override
  Future<Either<ApiFailures, dynamic>> newTaxRequest({String? notes, String? year}) async {
    final userSetting = ref!.read(settingHiveNotifierProvider);
    try {
      final result = await dio.get("$baseUrl/taxExemptionRequest/placeRequest?year=$year&notes=$notes&api_token=${userSetting!.token}");
      if (result.data['AZSVR'] == "SUCCESS") {
        return right("done");
      } else {
        return left(ApiFailures.authFailed(message: result.data['Reason']));
      }
    } on DioException catch (error) {
      return DioExceptionHandler.handleDioException(error);
    }
  }

  @override
  Future<Either<ApiFailures, dynamic>> cancelDonation({String? id}) async {
    final userSetting = ref!.read(settingHiveNotifierProvider);
    try {
      final result = await dio.get("$baseUrl/donation/cancelDonation?donation_id=$id&api_token=${userSetting!.token}");
      print(result.realUri);
      if (result.data['AZSVR'] == "SUCCESS") {
        final refresh = await ref!.refresh(getProfileProvider.future);
        return right("done");
      } else {
        return left(ApiFailures.authFailed(message: result.data['Reason']));
      }
    } on DioException catch (error) {
      print(error.requestOptions.uri);
      return DioExceptionHandler.handleDioException(error);
    }
  }

  @override
  Future<Either<ApiFailures, dynamic>> updateToken({String? token, String? apitoken, String? id}) async {
    try {
      final result = await dio.get("$baseUrl/user/setFCMToken?imei=$id&fcm_token=$token&api_token=${apitoken}");
      if (result.data['AZSVR'] == "SUCCESS") {
        return right("done");
      } else {
        return left(ApiFailures.authFailed(message: result.data['Reason']));
      }
    } on DioException catch (error) {
      return DioExceptionHandler.handleDioException(error);
    }
  }
}
