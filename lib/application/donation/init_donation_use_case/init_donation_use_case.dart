// ignore_for_file: unused_field

import 'package:alaman/application/core/use_cases/i.use_case.dart';
import 'package:alaman/application/donation/init_donation_use_case/init_donation_use_case.input.dart';
import 'package:alaman/application/provider/user.repository.provider.dart';
import 'package:alaman/domain/failures/api.failures.dart';
import 'package:alaman/domain/user/interface/i.user.repository.dart';
import "package:fpdart/fpdart.dart";
import 'package:hooks_riverpod/hooks_riverpod.dart';

final initDonationUseCaseProvider = Provider((ref) =>
    InitDonationUseCase(authRepository: ref.watch(userRepositoryProvider)));

class InitDonationUseCase
    implements IUseCase<InitDonationUseCaseInput, dynamic> {
  final IUserRepository? _authRepository;
  InitDonationUseCase({
    IUserRepository? authRepository,
  }) : _authRepository = authRepository;

  @override
  Future<Either<ApiFailures, dynamic>> execute(input) async {
    return await _authRepository!.initDonations(
      donationTypeId: input.donationTypeId,
      paymentMethodId: input.paymentMethodId,
      totalAmount: input.totalAmount,
      location: input.location,
      isRecurring: input.isRecurring,
      startDate: input.startDate,
      endDate: input.endDate,
      donationFrequencyId: input.donationFrequencyId,
      notes: input.notes,
      mouId: input.mouId,
    );
  }
}
