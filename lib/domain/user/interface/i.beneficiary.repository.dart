import 'package:alaman/domain/alamanreqeust/alaman.request.model.dart';
import 'package:alaman/domain/failures/api.failures.dart';
import 'package:alaman/domain/trainingreqeust/model/training.request.model.dart';
import 'package:fpdart/fpdart.dart';

abstract class IBeneficiaryRepository {
  Future<Either<ApiFailures, dynamic>> placeAlamanReqeusts(
      {String? notes, int? sercviceID});
  Future<Either<ApiFailures, dynamic>> placeTrainingReqeusts(
      {String? notes, int? programId});
  Future<Either<ApiFailures, List<AlamanRequestModel>>> getAlamanReqeusts();
  Future<Either<ApiFailures, Unit>> setAvatar({int? id}) ;
  Future<Either<ApiFailures, List<TrainingRequestModel>>> getTrainingReqeusts();
}
