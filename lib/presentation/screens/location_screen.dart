import 'package:alaman/application/provider/user.repository.provider.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class LocationScreen extends HookConsumerWidget {
  const LocationScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final generic = ref.watch(getGenericProvider);
    return Container();
  }
}
