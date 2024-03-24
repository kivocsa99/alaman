import 'package:alaman/domain/failures/api.failures.dart';
import 'package:alaman/domain/generic/model/generic.model.dart';
import 'package:alaman/domain/news/model/news.model.dart';
import 'package:alaman/domain/product/model/product.model.dart';
import 'package:alaman/domain/user/model/beneficiary/beneficiary.model.dart';
import 'package:fpdart/fpdart.dart';
import 'package:tuple/tuple.dart';

abstract class IUserRepository {
  Future<Either<ApiFailures, dynamic>> getMyProfile();
  Future<Either<ApiFailures, dynamic>> updateProfile();
  Future<Either<ApiFailures, BeneficiaryModel>> getProfileById(
      {String? profileId});
  Future<Either<ApiFailures, List<NewsModel>>> getNews({int page = 1});
  Future<Either<ApiFailures, GenericModel>> getGeneric();

  Future<Either<ApiFailures, List<ProductModel>>> getProducts();
  Future<Either<ApiFailures, Tuple2<List<BeneficiaryModel>, String?>>>
      searchBeneficiaries({
    int? genderId,
    int? cityId,
    int? educationalYearId,
    String? age,
    int? scholarshipTypeId,
  });

  Future<Either<ApiFailures, String>> initDonations({
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
  });
}
