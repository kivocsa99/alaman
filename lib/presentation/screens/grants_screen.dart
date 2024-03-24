import 'package:alaman/application/provider/hive.setting.provider.dart';
import 'package:alaman/presentation/widgets/custom_appbar.dart';
import 'package:alaman/presentation/widgets/donations_grid.dart';
import 'package:alaman/presentation/widgets/grants_grid.dart';
import 'package:alaman/presentation/widgets/responsive_widget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class GrantsScreen extends HookConsumerWidget {
  const GrantsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userSetting = ref.watch(settingHiveNotifierProvider);
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
          title: userSetting?.role == "Beneficiary"
              ? "Types of Grants"
              : "Donations",
          description: userSetting?.role == "Beneficiary"
              ? "Choose a type of grant"
              : "Choose a type of donation",
        ),
        body: ResponsiveWidget(
            child: userSetting?.role == "Beneficiary"
                ? GrantsGridView()
                : userSetting?.role == "Donor"
                    ? DonationsGridView()
                    : GrantsGridView()),
      ),
    );
  }
}
