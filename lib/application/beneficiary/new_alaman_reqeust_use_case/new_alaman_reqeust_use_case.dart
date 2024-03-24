// ignore_for_file: unused_field

import 'package:alaman/application/beneficiary/new_alaman_reqeust_use_case/new_alaman_reqeust_use_case.input.dart';
import 'package:alaman/application/core/use_cases/i.use_case.dart';
import 'package:alaman/application/provider/beneficiary.repository.provider.dart';
import 'package:alaman/domain/failures/api.failures.dart';
import 'package:alaman/domain/user/interface/i.beneficiary.repository.dart';
import "package:fpdart/fpdart.dart";
import 'package:hooks_riverpod/hooks_riverpod.dart';

final newAlamanRequestRequestUseCaseProvider = Provider((ref) =>
    NewAlamanRequestRequestUseCase(
        authRepository: ref.watch(beneficiaryRepositoryProvider)));

class NewAlamanRequestRequestUseCase
    implements IUseCase<NewAlamanRequestRequestUseCaseInput, dynamic> {
  final IBeneficiaryRepository? _authRepository;
  NewAlamanRequestRequestUseCase({
    IBeneficiaryRepository? authRepository,
  }) : _authRepository = authRepository;

  @override
  Future<Either<ApiFailures, dynamic>> execute(input) async {
    return await _authRepository!.placeAlamanReqeusts(
      sercviceID: input.id,
      notes: input.notes,
    );
  }
}
