import 'package:alaman/application/provider/auth.repository.provider.dart';
import 'package:alaman/domain/auth/interface/i.auth.repository.dart';
import 'package:flutter_map/flutter_map.dart';
import "package:fpdart/fpdart.dart";

import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../domain/failures/api.failures.dart';
import '../../core/use_cases/i.use_case.dart';
import 'sign_up_with_email_and_password.input.dart';

final signUpWithEmailAndPasswordUseCaseProvider = Provider((ref) =>
    SignUpWithEmailAndPasswordUseCase(
        iAuthFacade: ref.watch(authRepositoryProvider)));

class SignUpWithEmailAndPasswordUseCase
    implements IUseCase<SignUpWithEmailAndPasswordUseCaseInput, String> {
  final IAuthRepository? _iAuthFacade;

  SignUpWithEmailAndPasswordUseCase({IAuthRepository? iAuthFacade})
      : _iAuthFacade = iAuthFacade;

  @override
  Future<Either<ApiFailures, String>> execute(input) async {
    return await _iAuthFacade!.signUpWithEmailAndPassword(
      googleToken: input.googleId,
      appleToken: input.appleId,
      authId:input.socialId,
       model: input.model);

  }
}
