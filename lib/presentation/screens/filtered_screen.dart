import 'dart:math';

import 'package:alaman/application/provider/language.provider.dart';
import 'package:alaman/application/provider/search.beneficiary.provider.dart';
import 'package:alaman/application/provider/selected.provider.dart';
import 'package:alaman/application/provider/user.repository.provider.dart';
import 'package:alaman/constants.dart';
import 'package:alaman/domain/user/model/beneficiary/beneficiary.model.dart';
import 'package:alaman/presentation/screens/sponser_screen.dart';
import 'package:alaman/presentation/widgets/auth_container.dart';
import 'package:alaman/presentation/widgets/custom_appbar.dart';
import 'package:alaman/presentation/widgets/responsive_widget.dart';
import 'package:alaman/presentation/widgets/selection_widget.dart';
import 'package:alaman/routes/app_route.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import "package:lottie/lottie.dart";
@RoutePage()
class FilteredScreen extends HookConsumerWidget {
  final int genderId;
  final int cityId;
  final int educationalYearId;
  final String age;
  final int? endAmount;
  final int? sponsershipEnd;
  final int? sponsershipSart;
  final int? donationAmount;
  final bool? isCorporate;
  final int scholarshipTypeId;
  const FilteredScreen(
      {required this.genderId,
      required this.cityId,
      required this.educationalYearId,
      required this.age,
      required this.scholarshipTypeId,
      this.isCorporate,
      this.donationAmount,
      this.endAmount,
      this.sponsershipEnd,
      this.sponsershipSart,
      super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollController = useScrollController();
    final state = ref.watch(paginatedBeneficiariesNotifierProvider);

    // Trigger initial data fetch if not already loaded.
    useEffect(() {
      final notifier =
          ref.read(paginatedBeneficiariesNotifierProvider.notifier);
      notifier.fetchBeneficiaries(
        genderId: genderId,
        cityId: cityId,
        educationalYearId: educationalYearId,
        age: age,
        scholarshipTypeId: scholarshipTypeId,
      );
      return null;
    }, []);
    if (state.showDialog) {
      // Since we cannot directly invoke showDialog here without causing an error
      // due to the build method's constraints, we schedule it post frame.
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (!ModalRoute.of(context)!.isCurrent)
          return; // Prevents dialog from appearing in a non-top route
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Alert'),
              content: Text('Your custom message here.'),
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text('Close'),
                ),
              ],
            );
          },
        );
        // Remember to reset the flag if necessary to prevent repeated dialogs.
        ref
            .read(paginatedBeneficiariesNotifierProvider.notifier)
            .resetDialogFlag();
      });
    }
    useEffect(() {
      void onScroll() {
        if (scrollController.position.atEdge) {
          final isBottom = scrollController.position.pixels ==
              scrollController.position.maxScrollExtent;
          print(!state.hasReachedMax);
          if (isBottom && !state.hasReachedMax) {
            // Fetch more data here

            ref
                .read(paginatedBeneficiariesNotifierProvider.notifier)
                .fetchBeneficiaries(
                  genderId: genderId,
                  cityId: cityId,
                  educationalYearId: educationalYearId,
                  age: age,
                  scholarshipTypeId: scholarshipTypeId,
                );
          }
        }
      }

      scrollController.addListener(onScroll);
      return () => scrollController.removeListener(onScroll);
    }, [scrollController]);
    final locale =
        ref.watch(languageHiveNotifierProvider.notifier).getLanguage();
    Random random = Random();
    int randomNumber = random.nextInt(3);
    final colorsList = useState<List<Color>>([
      const Color(0xff4379BD),
      const Color(0xffFEE596),
      const Color(0xff93C1E8),
    ]);
    final selectedBeneficiaries = useState<Map<String, bool>>({});
    final currentDonationTotal = useState<double>(0.0);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(8.0),
          child: AuthContainer(
            raduis: 50,
            height: 50,
            onTap: () async {},
            color: const Color(0xffFFC629),
            child: Text(
              "confirm",
              style: Theme.of(context)
                  .primaryTextTheme
                  .titleSmall
                  ?.copyWith(color: Colors.white),
            ).tr(),
          ),
        ),
        appBar: const CustomAppBar(
            title: "donate", description: "choosebeneficiary"),
        body: ResponsiveWidget(
          child: GridView.builder(
            padding: const EdgeInsets.all(10),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 0.8,
            ),
            controller: scrollController,
            itemCount: state.hasReachedMax
                ? state.beneficiaries.length
                : state.beneficiaries.length + 1,
            itemBuilder: (context, index) {
              print(state.beneficiaries.length);
              if (index >= state.beneficiaries.length) {
                return const Center(child: CircularProgressIndicator());
              }
              final beneficaryItem = state.beneficiaries[index];
             void handleSelectionChanged(
                  BeneficiaryModel beneficaryItem, bool isSelected) {
                // Find the beneficiary to get its donation goal and current payments.
                final beneficiary = beneficaryItem;
                final donationGoal = beneficiary.donations_goal!.toDouble();
                final currentPayments = beneficiary.beneficiary_payments!.fold(
                  0.0,
                  (sum, current) => sum + current.amount!.toDouble(),
                );
                final neededAmount = donationGoal - currentPayments;

                // Calculate the new total if this beneficiary is selected.
                final newTotalDonation = isSelected
                    ? currentDonationTotal.value + neededAmount
                    : currentDonationTotal.value - neededAmount;

                // Check if selecting this beneficiary would exceed the donation amount.
                if (newTotalDonation <= (donationAmount ?? double.infinity) &&
                    isSelected) {
                  currentDonationTotal.value = newTotalDonation;
                  selectedBeneficiaries.value = {
                    ...selectedBeneficiaries.value,
                    beneficaryItem.id.toString(): isSelected,
                  };
                } else if (!isSelected) {
                  // Always allow deselection.
                  currentDonationTotal.value = newTotalDonation;
                  selectedBeneficiaries.value = {
                    ...selectedBeneficiaries.value,
                    beneficaryItem.id.toString(): isSelected,
                  };
                } else {
                  // Optionally show an error message if the donation limit would be exceeded.
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                        content: Text(
                            "Selecting this would exceed the donation limit.")),
                  );
                }
              }
              return isCorporate == null
                  ? GestureDetector(
                      onTap: () => context.router.push(SposnerRoute(
                          profileById: beneficaryItem.id.toString(),
                          isdonor: isCorporate ?? false)),
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
                                '$storageUrl/${beneficaryItem.image}', // Replace with your image URL or asset
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
                                      locale == "en"
                                          ? beneficaryItem.name!
                                          : beneficaryItem.name_ar!,
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      beneficaryItem.address!,
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
                          ],
                        ),
                      ),
                    )
                  : BeneficiaryListItem(
                      beneficiary: beneficaryItem,
                      initiallySelected:
                          selectedBeneficiaries.value[beneficaryItem.id] ??
                              false,
                      onSelectionChanged: (isSelected) =>
                          handleSelectionChanged(beneficaryItem, isSelected!),
                      currentTotalDonation: currentDonationTotal.value,
                      donationLimit: donationAmount!.toDouble(),
                    );
            },
          ),
        ),
      ),
    );
  }
}

extension ColorBrightness on Color {
  Color brighten([int amount = 20]) {
    assert(amount >= 0 && amount <= 255, 'Amount must be between 0 and 255');
    return withRed(
      red + amount > 255 ? 255 : red + amount,
    )
        .withGreen(
          green + amount > 255 ? 255 : green + amount,
        )
        .withBlue(
          blue + amount > 255 ? 255 : blue + amount,
        );
  }
}
