import 'package:alaman/application/provider/hive.setting.provider.dart';
import 'package:alaman/presentation/widgets/custom_appbar.dart';
import 'package:alaman/presentation/widgets/donations_grid.dart';
import 'package:alaman/presentation/widgets/grants_grid.dart';
import 'package:alaman/presentation/widgets/responsive_widget.dart';
import 'package:alaman/presentation/widgets/sponsership_grid.dart';
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
        notMain: false,
          title: userSetting?.role == "Beneficiary"
              ? "grantsType"
              : "donationType",
          description: userSetting?.role == "Beneficiary"
              ? "choosegrant"
              : "choosedonation",
        ),
        body: ResponsiveWidget(
            child: userSetting?.role == "Beneficiary"
                ? GrantsGridView()
                : userSetting?.role == "Donor"
                    ? DonationsGridView()
                    :  SponserShipGridView()),
      ),
    );
  }
}
