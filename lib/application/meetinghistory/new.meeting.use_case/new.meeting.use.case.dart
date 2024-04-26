// ignore_for_file: unused_field

import 'package:alaman/application/core/use_cases/i.use_case.dart';
import 'package:alaman/application/meetinghistory/new.meeting.use_case/new.meeting.use.case.input.dart';
import 'package:alaman/application/provider/user.repository.provider.dart';
import 'package:alaman/domain/failures/api.failures.dart';
import 'package:alaman/domain/user/interface/i.user.repository.dart';
import "package:fpdart/fpdart.dart";
import 'package:hooks_riverpod/hooks_riverpod.dart';

final newMeetingUseCaseProvider = Provider((ref) =>
    NewMeetingUseCase(authRepository: ref.watch(userRepositoryProvider)));

class NewMeetingUseCase
    implements IUseCase<NewMeetingUseCaseInput, dynamic> {
  final IUserRepository? _authRepository;
  NewMeetingUseCase({
    IUserRepository? authRepository,
  }) : _authRepository = authRepository;

  @override
  Future<Either<ApiFailures, dynamic>> execute(input) async {
    return await _authRepository!.newMeeting( 
      date: input.date,
      time: input.time,
      duration: input.duration,
      beneficiaryId: input.beneficiaryId,
      meetingMethodsId: input.meetingMethodsId,     
      notes: input.notes,
    );
  }
}
