import 'package:alaman/domain/userregistration/user.registration.model.dart';

class ResetPasswordUseCaseInput {
  final String? phone;
  final String? nationalId;
  ResetPasswordUseCaseInput({
    required this.phone,
    required this.nationalId,
  });
}
