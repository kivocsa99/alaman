import 'dart:async';
import 'package:alaman/application/provider/search.beneficiary.provider.dart';
import 'package:alaman/domain/alamanreqeust/alaman.request.model.dart';
import 'package:alaman/domain/failures/api.failures.dart';
import 'package:alaman/domain/generic/model/generic.model.dart';
import 'package:alaman/domain/meetinghistory/model/meeting.history.model.dart';
import 'package:alaman/domain/news/model/news.model.dart';
import 'package:alaman/domain/notifications/model/notifications.model.dart';
import 'package:alaman/domain/product/model/product.model.dart';
import 'package:alaman/domain/trainingreqeust/model/training.request.model.dart';
import 'package:alaman/domain/user/interface/i.user.repository.dart';
import 'package:alaman/domain/user/model/beneficiary/beneficiary.model.dart';
import 'package:alaman/infrastructure/user/user.repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tuple/tuple.dart';
part 'user.repository.provider.g.dart';

final userRepositoryProvider = Provider<IUserRepository>((ref) => UserRepository(ref: ref));
final paginatedBeneficiariesNotifierProvider = StateNotifierProvider<PaginatedBeneficiariesNotifier, PaginatedBeneficiariesState>((ref) {
  return PaginatedBeneficiariesNotifier(ref.watch(userRepositoryProvider));
});
@riverpod
Future<Either<ApiFailures, List<NewsModel>>> getNews(Ref ref) {
  return ref.watch(userRepositoryProvider).getNews();
}

@riverpod
Future<Either<ApiFailures, String?>> checkPhoneNumber(Ref ref, {String? phone, String? value}) {
  return ref.watch(userRepositoryProvider).checkPhoneNumber(phone: phone!, value: value!);
}

@riverpod
Future<Either<ApiFailures, List<MeetingHistoryModel>>> getMeetingHistory(Ref ref, {int? id}) {
  return ref.watch(userRepositoryProvider).getMeetingHistory(id: id);
}

@riverpod
Future<Either<ApiFailures, Tuple2<List<String>, String>>> getSchedule(Ref ref, {int? amount, String? endate, String? startDate, String? donationfrequencyid}) {
  return ref.watch(userRepositoryProvider).getrecurringSchedule(amount: amount, startDate: startDate, endate: endate, donationfrequencyid: donationfrequencyid);
}

@riverpod
Future<Either<ApiFailures, dynamic>> deleteMyAccount(Ref ref) {
  return ref.watch(userRepositoryProvider).deleteAccount();
}

@riverpod
Future<Either<ApiFailures, GenericModel>> getGeneric(Ref ref) {
  return ref.watch(userRepositoryProvider).getGeneric();
}

@riverpod
Future<Either<ApiFailures, dynamic>> getProfile(Ref ref) {
  return ref.watch(userRepositoryProvider).getMyProfile();
}

@riverpod
Future<Either<ApiFailures, BeneficiaryModel>> getProfileByID(Ref ref, {String? profileId}) {
  return ref.watch(userRepositoryProvider).getProfileById(profileId: profileId);
}

@riverpod
Future<Either<ApiFailures, List<ProductModel>>> getProducts(Ref ref) {
  return ref.watch(userRepositoryProvider).getProducts();
}

@riverpod
Future<Either<ApiFailures, List<AlamanRequestModel>>> getRequests(Ref ref, {String? id}) {
  return ref.watch(userRepositoryProvider).getservices(id: id);
}

@riverpod
Future<Either<ApiFailures, List<TrainingRequestModel>>> gettraining(Ref ref, {String? id}) {
  return ref.watch(userRepositoryProvider).gettraining(id: id);
}

@riverpod
Future<Either<ApiFailures, List<NotificationsModel>>> getNotificationsHistory(Ref ref) {
  return ref.watch(userRepositoryProvider).getNotificationsHistory();
}

@riverpod
Future<Either<ApiFailures, dynamic>> getTaxesRequest(Ref ref, {String? id}) {
  return ref.watch(userRepositoryProvider).getTaxesRequest(id: id);
}

@riverpod
Future<Either<ApiFailures, Tuple2<List<BeneficiaryModel>, String?>>> searchMoreBeneficiaries(
  Ref ref, {
  String? url,
}) {
  return ref.watch(userRepositoryProvider).searchMoreBeneficiaries(url: url);
}

@riverpod
Future<Either<ApiFailures, Tuple3<List<BeneficiaryModel>, String?, bool?>>> searchBeneficiaries(
  Ref ref, {
  int? genderId,
  int? cityId,
  int? educationalYearId,
  String? age,
  int? scholarshipTypeId,
}) {
  return ref.watch(userRepositoryProvider).searchBeneficiaries(genderId: genderId, cityId: cityId, educationalYearId: educationalYearId, age: age, scholarshipTypeId: scholarshipTypeId);
}
