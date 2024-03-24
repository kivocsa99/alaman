import 'dart:async';
import 'package:alaman/domain/failures/api.failures.dart';
import 'package:alaman/domain/generic/model/generic.model.dart';
import 'package:alaman/domain/news/model/news.model.dart';
import 'package:alaman/domain/product/model/product.model.dart';
import 'package:alaman/domain/user/interface/i.user.repository.dart';
import 'package:alaman/domain/user/model/beneficiary/beneficiary.model.dart';
import 'package:alaman/infrastructure/user/user.repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:tuple/tuple.dart';
part 'user.repository.provider.g.dart';

final userRepositoryProvider =
    Provider<IUserRepository>((ref) => UserRepository(ref: ref));
@riverpod
Future<Either<ApiFailures, List<NewsModel>>> getNews(Ref ref) {
  return ref.watch(userRepositoryProvider).getNews();
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
Future<Either<ApiFailures, BeneficiaryModel>> getProfileByID(Ref ref,
    {String? profileId}) {
  return ref.watch(userRepositoryProvider).getProfileById(profileId: profileId);
}

@riverpod
Future<Either<ApiFailures, List<ProductModel>>> getProducts(Ref ref) {
  return ref.watch(userRepositoryProvider).getProducts();
}

@riverpod
Future<Either<ApiFailures, Tuple2<List<BeneficiaryModel>, String?>>>
    searchBeneficiaries(
  Ref ref, {
  int? genderId,
  int? cityId,
  int? educationalYearId,
  String? age,
  int? scholarshipTypeId,
}) {
  return ref.watch(userRepositoryProvider).searchBeneficiaries(
      genderId: genderId,
      cityId: cityId,
      educationalYearId: educationalYearId,
      age: age,
      scholarshipTypeId: scholarshipTypeId);
}
