import 'package:alaman/domain/auth/interface/i.auth.repository.dart';
import 'package:alaman/domain/failures/api.failures.dart';
import 'package:alaman/infrastructure/auth/auth.repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'auth.repository.provider.g.dart';
final authRepositoryProvider =
    Provider<IAuthRepository>((ref) => AuthRepository(ref: ref));
@riverpod
Future<void> logOut(Ref ref) {
  return ref.watch(authRepositoryProvider).logOut();
}
@riverpod
Future<Either<ApiFailures, String?>> checkSocial(Ref ref,
    {required String socialId,  String? appleToken,String?googleToken
}) {
  return ref
      .watch(authRepositoryProvider)
      .checkSignedSocial(socialId: socialId, appleToken: appleToken,googleToken: googleToken);
}
