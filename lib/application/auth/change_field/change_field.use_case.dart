// ignore_for_file: unused_field

import 'package:alaman/application/core/use_cases/i.use_case.dart';
import 'package:alaman/application/provider/user.repository.provider.dart';
import 'package:alaman/domain/failures/api.failures.dart';
import 'package:alaman/domain/user/interface/i.user.repository.dart';
import "package:fpdart/fpdart.dart";
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'change_field.input.dart';

final changeFieldUseCaseProvider = Provider(
    (ref) => ChangeFieldUseCase(authFacade: ref.watch(userRepositoryProvider)));

class ChangeFieldUseCase implements IUseCase<ChangeFieldUseCaseInput, dynamic> {
  final IUserRepository? _authFacade;
  ChangeFieldUseCase({
    IUserRepository? authFacade,
  }) : _authFacade = authFacade;

  @override
  Future<Either<ApiFailures, dynamic>> execute(input) async {
    return await _authFacade!
        .updateProfile(value: input.value, field: input.field);
  }
}
