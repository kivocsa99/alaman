import 'package:alaman/domain/userregistration/user.registration.model.dart';

class SignUpWithEmailAndPasswordUseCaseInput {
  final UserRegistration model;
 final     String?socialId;
  final  String?appleId;
  final  String?googleId;

  SignUpWithEmailAndPasswordUseCaseInput({this.socialId, this.appleId, this.googleId, required this.model});
}
