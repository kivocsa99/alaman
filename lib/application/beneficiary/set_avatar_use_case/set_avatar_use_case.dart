// ignore_for_file: unused_field

import 'package:alaman/application/beneficiary/set_avatar_use_case/set_avatar_use_case.input.dart';
import 'package:alaman/application/core/use_cases/i.use_case.dart';
import 'package:alaman/application/provider/beneficiary.repository.provider.dart';
import 'package:alaman/domain/failures/api.failures.dart';
import 'package:alaman/domain/user/interface/i.beneficiary.repository.dart';
import "package:fpdart/fpdart.dart";
import 'package:hooks_riverpod/hooks_riverpod.dart';

final setAvatarUseCaseProvider = Provider((ref) =>
    SetAvatarUseCase(
        authRepository: ref.watch(beneficiaryRepositoryProvider)));

class SetAvatarUseCase
    implements IUseCase<SetAvatarUseCaseInput, dynamic> {
  final IBeneficiaryRepository? _authRepository;
  SetAvatarUseCase({
    IBeneficiaryRepository? authRepository,
  }) : _authRepository = authRepository;

  @override
  Future<Either<ApiFailures, dynamic>> execute(input) async {
    return await _authRepository!.setAvatar(
      id: input.id,
    );
  }
}
