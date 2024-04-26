import 'package:alaman/domain/failures/api.failures.dart';
import 'package:alaman/domain/userregistration/user.registration.model.dart';
import 'package:fpdart/fpdart.dart';

abstract class IAuthRepository {
  Future<Either<ApiFailures, String>> signUpWithEmailAndPassword(
      {required UserRegistration model,String?appleToken,String?googleToken,String?authId});
  Future<Either<ApiFailures, String>> signInWithEmailAndPassword({
    required String phone,
    required String password,
  });
    Future<Either<ApiFailures, String>> checkSignedSocial({
required String socialId,  String? appleToken,String?googleToken
  });
  Future<void> logOut();
}
