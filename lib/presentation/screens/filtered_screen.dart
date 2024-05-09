import 'dart:math';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:alaman/application/provider/language.provider.dart';
import 'package:alaman/application/provider/user.repository.provider.dart';
import 'package:alaman/constants.dart';
import 'package:alaman/domain/user/model/beneficiary/beneficiary.model.dart';
import 'package:alaman/presentation/widgets/auth_container.dart';
import 'package:alaman/presentation/widgets/corporate.bottom.sheet.dart';
import 'package:alaman/presentation/widgets/custom_appbar.dart';
import 'package:alaman/presentation/widgets/responsive_widget.dart';
import 'package:alaman/presentation/widgets/selection_widget.dart';
import 'package:alaman/routes/app_route.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
  final int? recuring;
  final String? startDate;
  final String? endDate;
  final int scholarshipTypeId;
  final int? donationFrequencyId;

  const FilteredScreen({
    required this.genderId,
    required this.cityId,
    required this.educationalYearId,
    required this.age,
    required this.scholarshipTypeId,
    this.isCorporate,
    this.donationAmount,
    this.endAmount,
    this.sponsershipEnd,
    this.donationFrequencyId,
    this.sponsershipSart,
    this.recuring,
    this.startDate,
    this.endDate,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final scrollController = useScrollController();
    final state = ref.watch(paginatedBeneficiariesNotifierProvider);

    // Trigger initial data fetch if not already loaded.
    useEffect(() {
      final notifier = ref.read(paginatedBeneficiariesNotifierProvider.notifier);
      notifier.fetchBeneficiaries(
        genderId: genderId,
        cityId: cityId,
        educationalYearId: educationalYearId,
        age: age,
        scholarshipTypeId: scholarshipTypeId,
      );
      return null;
    }, []);

    useEffect(() {
      void onScroll() {
        if (scrollController.position.atEdge && scrollController.position.pixels == scrollController.position.maxScrollExtent && !state.hasReachedMax) {
          ref.read(paginatedBeneficiariesNotifierProvider.notifier).fetchBeneficiaries(
                genderId: genderId,
                cityId: cityId,
                educationalYearId: educationalYearId,
                age: age,
                scholarshipTypeId: scholarshipTypeId,
                isNextPage: true,
              );
        }
      }

      scrollController.addListener(onScroll);
      return () => scrollController.removeListener(onScroll);
    }, [scrollController]);

    final locale = ref.watch(languageHiveNotifierProvider);
    Random random = Random();
    int randomNumber = random.nextInt(3);
    final colorsList = useState<List<Color>>([
      const Color(0xff4379BD),
      const Color(0xffFEE596),
      const Color(0xff93C1E8),
    ]);
    final selectedBeneficiaries = useState<Map<String, bool>>({});
    final currentDonationTotal = useState<double>(0.0);
    final selectedBeneficiaryIds = useState<List<int>>([]);
    final isLoading = useState(false);

    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: isCorporate != null
            ? Padding(
                padding: const EdgeInsets.all(8.0),
                child: AuthContainer(
                  raduis: 50,
                  height: 50,
                  onTap: () async {
                    isLoading.value = true;
                    final result = await ref.read(getGenericProvider.future);
                    return result.fold((l) {
                      isLoading.value = false;
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(l.message ?? "internetconnection").tr()));
                    }, (r) async {
                      isLoading.value = false;
                      showModalBottomSheet(
                        context: context,
                        backgroundColor: Colors.white,
                        showDragHandle: true,
                        isScrollControlled: true,
                        barrierColor: Colors.grey.withOpacity(0.7),
                        builder: (BuildContext context) {
                          return CorporateBottomSheet(
                            donationFrequencyId: donationFrequencyId,
                            recuring: recuring,
                            startDate: startDate,
                            endDate: endDate,
                            totalAmount: donationAmount!.toDouble(),
                            beneficiaries: selectedBeneficiaryIds.value,
                            paymentMethods: r.PaymentMethods,
                          );
                        },
                      );
                    });
                  },
                  color: const Color(0xffFFC629),
                  child: Text(
                    "confirm",
                    style: Theme.of(context).primaryTextTheme.titleSmall?.copyWith(color: Colors.white),
                  ).tr(),
                ),
              )
            : null,
        appBar: const CustomAppBar(title: "donate", description: "choosebeneficiary"),
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
            itemCount: state.hasReachedMax ? state.beneficiaries.length : state.beneficiaries.length + 1,
            itemBuilder: (context, index) {
              if (index >= state.beneficiaries.length) {
                return const Center(child: CircularProgressIndicator());
              }
              final beneficiary = state.beneficiaries[index];

              void handleSelectionChanged(BeneficiaryModel beneficiaryItem, bool isSelected) {
                final donationGoal = beneficiaryItem.donations_goal?.toDouble() ?? 0.0;
                final currentPayments = beneficiaryItem.beneficiary_payments?.fold(0.0, (sum, current) => sum + (current.amount?.toDouble() ?? 0.0)) ?? 0.0;
                final neededAmount = donationGoal - currentPayments;
                final newTotalDonation = isSelected ? currentDonationTotal.value + neededAmount : currentDonationTotal.value - neededAmount;

                if (newTotalDonation <= (donationAmount ?? double.infinity)) {
                  currentDonationTotal.value = newTotalDonation;
                  selectedBeneficiaries.value = {
                    ...selectedBeneficiaries.value,
                    beneficiaryItem.id.toString(): isSelected,
                  };
                  if (isSelected) {
                    selectedBeneficiaryIds.value = [...selectedBeneficiaryIds.value, beneficiaryItem.id];
                  } else {
                    selectedBeneficiaryIds.value = selectedBeneficiaryIds.value.where((id) => id != beneficiaryItem.id).toList();
                  }
                } else if (!isSelected) {
                  currentDonationTotal.value = newTotalDonation;
                  selectedBeneficiaries.value = {
                    ...selectedBeneficiaries.value,
                    beneficiaryItem.id.toString(): isSelected,
                  };
                  selectedBeneficiaryIds.value = selectedBeneficiaryIds.value.where((id) => id != beneficiaryItem.id).toList();
                } else {
                  showDialog(
                    context: context,
                    barrierDismissible: false,
                    builder: (context) => AlertDialog(
                      title: SizedBox(
                        height: 100,
                        width: 100,
                        child: SvgPicture.asset("assets/try1.svg"),
                      ),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "You have exceeded the amount you specified",
                            style: Theme.of(context).primaryTextTheme.bodyMedium!.copyWith(color: const Color(0xff16437B)),
                          ),
                          AuthContainer(
                            raduis: 50,
                            height: 50,
                            onTap: () async {
                              context.router.maybePop();
                            },
                            color: const Color(0xffFFC629),
                            child: Text(
                              "back",
                              style: Theme.of(context).primaryTextTheme.titleSmall?.copyWith(color: Colors.white),
                            ).tr(),
                          ),
                        ],
                      ),
                    ),
                  );
                }
              }

              return isCorporate == null
                  ? GestureDetector(
                      onTap: () => context.router.push(SposnerRoute(profileById: beneficiary.id.toString(), isdonor: isCorporate ?? false)),
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
                                '$storageUrl/${beneficiary.image}',
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
                                      Colors.white,
                                      colorsList.value[randomNumber].withOpacity(0.3),
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
                                      locale == "en" ? beneficiary.name ?? 'Unknown Name' : beneficiary.name_ar ?? 'Unknown Name',
                                      style: const TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      beneficiary.address ?? 'No Address',
                                      style: const TextStyle(
                                        color: Colors.black,
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
                      beneficiary: beneficiary,
                      initiallySelected: selectedBeneficiaries.value[beneficiary.id.toString()] ?? false,
                      onSelectionChanged: (isSelected) => handleSelectionChanged(beneficiary, isSelected ?? false),
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
