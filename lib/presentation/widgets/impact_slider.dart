import 'package:alaman/application/provider/user.repository.provider.dart';
import 'package:alaman/domain/user/model/beneficiary/beneficiary.model.dart';
import 'package:alaman/domain/user/model/donor/shared.donor.model.dart';
import 'package:alaman/presentation/widgets/impact_container.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ImpactSlider extends HookConsumerWidget {
  const ImpactSlider({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profile = ref.watch(getProfileProvider);
    return profile.when(
        data: (data) => data.fold((l) => Text("internetconnection").tr(), (r) {
              final SharedDonorModel model = r;
              final List<BeneficiaryModel> beneficiaries =
                  model.beneficiaries ?? [];
              return Container(
                color: Colors.transparent,
                height: 230,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: ImpactContainer(
                      beneficiary: beneficiaries[index],
                    ),
                  ),
                  itemCount: beneficiaries.length,
                ),
              );
            }),
        error: (error, stackTrace) => Text(error.toString()),
        loading: () => const CircularProgressIndicator());
  }
}
