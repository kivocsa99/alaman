// ignore_for_file: unused_field

import 'package:alaman/application/auth/reset_password/reset_password_use_case_input.dart';
import 'package:alaman/application/core/use_cases/i.use_case.dart';
import 'package:alaman/application/provider/user.repository.provider.dart';
import 'package:alaman/domain/failures/api.failures.dart';
import 'package:alaman/domain/user/interface/i.user.repository.dart';
import "package:fpdart/fpdart.dart";
import 'package:hooks_riverpod/hooks_riverpod.dart';

final resetPasswordUseCaseProvider = Provider((ref) => ResetPasswordUseCase(userRepository: ref.watch(userRepositoryProvider)));

class ResetPasswordUseCase implements IUseCase<ResetPasswordUseCaseInput, dynamic> {
  final IUserRepository? _iUserRepository;
  ResetPasswordUseCase({
    IUserRepository? userRepository,
  }) : _iUserRepository = userRepository;

  @override
  Future<Either<ApiFailures, dynamic>> execute(input) async {
    return await _iUserRepository!.resetPassword(phone: input.phone!, nationalNumber: input.nationalId!);
  }
}
