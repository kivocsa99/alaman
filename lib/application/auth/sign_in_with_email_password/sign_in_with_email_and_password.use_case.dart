// ignore_for_file: unused_field

import 'package:alaman/application/core/use_cases/i.use_case.dart';
import 'package:alaman/application/provider/auth.repository.provider.dart';
import 'package:alaman/domain/auth/interface/i.auth.repository.dart';
import 'package:alaman/domain/failures/api.failures.dart';
import "package:fpdart/fpdart.dart";
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'sign_in_with_email_and_password.input.dart';

final signInWithEmailAndPasswordUseCaseProvider = Provider((ref) =>
    SignInWithEmailAndPasswordUseCase(
        authFacade: ref.watch(authRepositoryProvider)));

class SignInWithEmailAndPasswordUseCase
    implements IUseCase<SignInWithEmailAndPasswordUseCaseInput, String> {
  final IAuthRepository? _authFacade;
  SignInWithEmailAndPasswordUseCase({
    IAuthRepository? authFacade,
  }) : _authFacade = authFacade;

  @override
  Future<Either<ApiFailures, String>> execute(input) async {
    return await _authFacade!.signInWithEmailAndPassword(
        phone: input.model.phone!, password: input.model.password!);
  }
}
