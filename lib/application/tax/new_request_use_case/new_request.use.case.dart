import 'package:alaman/application/core/use_cases/i.use_case.dart';
import 'package:alaman/application/provider/user.repository.provider.dart';
import 'package:alaman/application/tax/new_request_use_case/new_request.use.case.input.dart';
import 'package:alaman/domain/failures/api.failures.dart';
import 'package:alaman/domain/user/interface/i.user.repository.dart';
import "package:fpdart/fpdart.dart";
import 'package:hooks_riverpod/hooks_riverpod.dart';

final newTaxRequestUseCaseProvider = Provider((ref) => NewTaxRequestUseCase(userRepository: ref.watch(userRepositoryProvider)));

class NewTaxRequestUseCase implements IUseCase<NewTaxRequestUseCaseInput, dynamic> {
  final IUserRepository? _userRepository;
  NewTaxRequestUseCase({
    IUserRepository? userRepository,
  }) : _userRepository = userRepository;

  @override
  Future<Either<ApiFailures, dynamic>> execute(input) async {
    return await _userRepository!.newTaxRequest(
      year: input.year,
      notes: input.notes,
    );
  }
}
