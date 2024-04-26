// ignore_for_file: unused_field

import 'package:alaman/application/core/use_cases/i.use_case.dart';
import 'package:alaman/application/donation/cancel_donation_use_case/cancel_donation_use_case.input.dart';
import 'package:alaman/application/donation/init_donation_use_case/init_donation_use_case.input.dart';
import 'package:alaman/application/provider/user.repository.provider.dart';
import 'package:alaman/domain/failures/api.failures.dart';
import 'package:alaman/domain/user/interface/i.user.repository.dart';
import "package:fpdart/fpdart.dart";
import 'package:hooks_riverpod/hooks_riverpod.dart';

final cancelDonationUseCaseProvider = Provider((ref) => CancelDonationUseCase(userRepository: ref.watch(userRepositoryProvider)));

class CancelDonationUseCase implements IUseCase<CancelDonationUseCaseInput, dynamic> {
  final IUserRepository? _userRepository;
  CancelDonationUseCase({
    IUserRepository? userRepository,
  }) : _userRepository = userRepository;

  @override
  Future<Either<ApiFailures, dynamic>> execute(input) async {
    return await _userRepository!.cancelDonation(id: input.donationId);
  }
}
