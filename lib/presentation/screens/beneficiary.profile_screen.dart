import 'package:alaman/application/provider/user.repository.provider.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class BeneficiaryProfileScreen extends HookConsumerWidget {
  final String? profileId;
  const BeneficiaryProfileScreen({
    super.key,
    required this.profileId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final beneficiary = ref.watch(getProfileByIDProvider(profileId: profileId));
    return Container();
  }
}
