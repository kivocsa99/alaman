import 'package:alaman/domain/failures/api.failures.dart';
import 'package:alaman/domain/user/interface/i.beneficiary.repository.dart';
import 'package:alaman/infrastructure/user/beneficiary.repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final beneficiaryRepositoryProvider = Provider<IBeneficiaryRepository>((ref) => BeneficiaryRepository(ref: ref));
@riverpod
Future<Either<ApiFailures, dynamic>> getTrainingRequest(Ref ref, {int? id}) {
  return ref.watch(beneficiaryRepositoryProvider).getTrainingReqeusts(id: id.toString());
}

@riverpod
Future<Either<ApiFailures, dynamic>> getAlamanRequest(Ref ref, {int? id}) {
  return ref.watch(beneficiaryRepositoryProvider).getAlamanReqeusts(id: id.toString());
}
