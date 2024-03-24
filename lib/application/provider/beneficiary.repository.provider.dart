import 'package:alaman/domain/user/interface/i.beneficiary.repository.dart';
import 'package:alaman/infrastructure/user/beneficiary.repository.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final beneficiaryRepositoryProvider =
    Provider<IBeneficiaryRepository>((ref) => BeneficiaryRepository(ref: ref));
