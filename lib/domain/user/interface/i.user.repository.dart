import 'package:alaman/domain/alamanreqeust/alaman.request.model.dart';
import 'package:alaman/domain/campaigns/model/campaign.model.dart';
import 'package:alaman/domain/failures/api.failures.dart';
import 'package:alaman/domain/generic/model/generic.model.dart';
import 'package:alaman/domain/meetinghistory/model/meeting.history.model.dart';
import 'package:alaman/domain/news/model/news.model.dart';
import 'package:alaman/domain/notifications/model/notifications.model.dart';
import 'package:alaman/domain/product/model/product.model.dart';
import 'package:alaman/domain/trainingreqeust/model/training.request.model.dart';
import 'package:alaman/domain/user/model/beneficiary/beneficiary.model.dart';
import 'package:fpdart/fpdart.dart';
import 'package:tuple/tuple.dart';

abstract class IUserRepository {
  Future<Either<ApiFailures, dynamic>> getMyProfile();
  Future<Either<ApiFailures, dynamic>> resetPassword({String? phone, String? nationalNumber});
  Future<Either<ApiFailures, dynamic>> deleteAccount();
  Future<Either<ApiFailures, dynamic>> cancelDonation({String? id});
  Future<Either<ApiFailures, dynamic>> newTaxRequest({String? notes, String? year});
  Future<Either<ApiFailures, dynamic>> updateToken({String? token, String? apitoken, String? id});

  Future<Either<ApiFailures, dynamic>> updateProfile({String? value, String? field});
  Future<Either<ApiFailures, dynamic>> getTaxesRequest({String? id});
  Future<Either<ApiFailures, BeneficiaryModel>> getProfileById({String? profileId});
  Future<Either<ApiFailures, List<NewsModel>>> getNews({int page = 1});
  Future<Either<ApiFailures, List<NotificationsModel>>> getNotificationsHistory();

  Future<Either<ApiFailures, Tuple2<List<CampaignModel>, String?>>> getCampaigns({int page = 1});
  Future<Either<ApiFailures, GenericModel>> getGeneric();
  Future<Either<ApiFailures, dynamic>> newMeeting({
    String? date,
    String? time,
    String? duration,
    String? meetingMethodsId,
    String? notes,
    String? beneficiaryId,
  });
  Future<Either<ApiFailures, String>> checkPhoneNumber({required String phone, required String? value});
  Future<Either<ApiFailures, List<ProductModel>>> getProducts();
  Future<Either<ApiFailures, List<MeetingHistoryModel>>> getMeetingHistory({int? id});
  Future<Either<ApiFailures, Tuple2<List<BeneficiaryModel>, String?>>> searchMoreBeneficiaries({
    String? url,
  });
  Future<Either<ApiFailures, List<TrainingRequestModel>>> gettraining({String? id});
  Future<Either<ApiFailures, List<AlamanRequestModel>>> getservices({String? id});
  Future<Either<ApiFailures, Tuple2<List<String>, String>>> getrecurringSchedule({
    int? amount,
    String? endate,
    String? startDate,
    String? donationfrequencyid,
  });

  Future<Either<ApiFailures, Tuple3<List<BeneficiaryModel>, String?, bool?>>> searchBeneficiaries({
    int? genderId,
    int? cityId,
    int? educationalYearId,
    String? age,
    int? scholarshipTypeId,
  });

  Future<Either<ApiFailures, dynamic>> initDonations({
    int? donationTypeId,
    int? paymentMethodId,
    num? totalAmount,
    List<int>? beneficiaryIds,
    Map<String, dynamic>? location,
    int? isRecurring,
    String? startDate,
    String? endDate,
    int? donationFrequencyId,
    String? notes,
    String? mouId,
  });
}
