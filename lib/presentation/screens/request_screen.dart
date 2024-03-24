import 'package:alaman/presentation/widgets/custom_appbar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class RequestScreen extends HookConsumerWidget {

  const RequestScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Scaffold(
        appBar: const CustomAppBar(
          title: "Profile",
          description: "Manage Grants",
        ),
        // body: ListView.builder(itemBuilder: itemBuilder),
      ),
    );
  }
}
