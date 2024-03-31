import 'dart:math';

import 'package:alaman/application/provider/language.provider.dart';
import 'package:alaman/constants.dart';
import 'package:alaman/domain/user/model/beneficiary/beneficiary.model.dart';
import 'package:alaman/presentation/screens/filtered_screen.dart';
import 'package:alaman/presentation/widgets/auth_container.dart';
import 'package:alaman/routes/app_route.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lottie/lottie.dart';

class BeneficiaryListItem extends HookConsumerWidget {
  final BeneficiaryModel beneficiary;
  final bool initiallySelected;
  final Function(bool? isSelected) onSelectionChanged;
  final double currentTotalDonation;
  final double donationLimit;

  BeneficiaryListItem({
    Key? key,
    required this.beneficiary,
    this.initiallySelected = false,
    required this.onSelectionChanged,
    required this.currentTotalDonation,
    required this.donationLimit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isSelected = useState<bool>(initiallySelected);
    final locale =
        ref.watch(languageHiveNotifierProvider.notifier).getLanguage();
    useEffect(() {
      isSelected.value = initiallySelected;
      return null;
    }, [initiallySelected]);
    Random random = Random();
    int randomNumber = random.nextInt(3);
    final colorsList = useState<List<Color>>([
      const Color(0xff4379BD),
      const Color(0xffFEE596),
      const Color(0xff93C1E8),
    ]);
    return GestureDetector(
      onTap: () => context.router.push(
          SposnerRoute(isdonor: true, profileById: beneficiary.id.toString())),
      child: Container(
        width: double.infinity,
        height: 250.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: colorsList.value[randomNumber],
        ),
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.bottomCenter,
              child: Image.network(
                '$storageUrl/${beneficiary.image}', // Replace with your image URL or asset
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      stops: [0, 5],
                      colors: [
                        // Brighten function is not native, you'd have to implement it
                        Colors.white,
                        colorsList.value[randomNumber]
                            .brighten(0)
                            .withOpacity(0.3),
                      ],
                    ),
                    ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      locale == "en" ? beneficiary.name! : beneficiary.name_ar!,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      beneficiary.address!,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 10,
              right: 10,
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.search,
                  size: 30,
                ),
              ),
            ),
            Positioned(
              top: 10,
              left: 10,
              child: Checkbox(
                value: isSelected.value,
                onChanged: (selected) {
                  if (selected == true) {
                    // Calculate the additional amount needed for this beneficiary.
                    final additionalAmountNeeded = beneficiary.donations_goal! -
                        beneficiary.beneficiary_payments!.fold(0.0,
                            (sum, current) => sum + current.amount!.toDouble());
                    // Check if selecting this beneficiary would exceed the total donation limit.
                    if (currentTotalDonation + additionalAmountNeeded <=
                        donationLimit) {
                      isSelected.value =
                          true; // Update the local state only if within the limit
                      onSelectionChanged(
                          true); // Notify the parent widget about the selection
                    } else {
                      // Show a message if the donation limit would be exceeded.
                      showDialog(
                                        context: context,
                                        barrierDismissible: false,
                                        builder: (context) => AlertDialog(
                                          title: SizedBox(
                                            height: 100,
                                            width: 100,
                                            child: Lottie.asset(
                                                "assets/money.json"),
                                          ),
                                          content: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Text(
                                                "You have excedded the amount you specified",
                                                style: Theme.of(context)
                                                    .primaryTextTheme
                                                    .bodyMedium!
                                                    .copyWith(
                                                        color: const Color(
                                                            0xff16437B)),
                                              ),
                                              AuthContainer(
                                                raduis: 50,
                                                height: 50,
                                                onTap: () async {
                                                  context.router.pop();
                                                },
                                                color: const Color(0xffFFC629),
                                                child: Text(
                                                  "back",
                                                  style: Theme.of(context)
                                                      .primaryTextTheme
                                                      .titleSmall
                                                      ?.copyWith(
                                                          color: Colors.white),
                                                ).tr(),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    }
                                  
                   
                  } else {
                    // Always allow deselecting.
                    isSelected.value = false;
                    onSelectionChanged(false);
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
