import 'dart:math';

import 'package:alaman/application/provider/language.provider.dart';
import 'package:alaman/application/provider/search.beneficiary.provider.dart';
import 'package:alaman/constants.dart';
import 'package:alaman/presentation/widgets/custom_appbar.dart';
import 'package:alaman/presentation/widgets/responsive_widget.dart';
import 'package:alaman/routes/app_route.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@RoutePage()
class FilteredScreen extends HookConsumerWidget {
  final int genderId;
  final int cityId;
  final int educationalYearId;
  final String age;
  final int? endAmount;
  final bool? isCorporate;
  final int scholarshipTypeId;
  const FilteredScreen(
      {required this.genderId,
      required this.cityId,
      required this.educationalYearId,
      required this.age,
      required this.scholarshipTypeId,
      this.isCorporate,
      this.endAmount,
      super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print(age);
    final state = ref.watch(paginatedBeneficiaryNotifierProvider);
    final notifier = ref.watch(paginatedBeneficiaryNotifierProvider.notifier);
    final locale =
        ref.watch(languageHiveNotifierProvider.notifier).getLanguage();
    final scrollController = useScrollController();
    Random random = Random();
    int randomNumber = random.nextInt(3);
    final colorsList = useState<List<Color>>([
      const Color(0xff4379BD),
      const Color(0xffFEE596),
      const Color(0xff93C1E8),
    final scrollController = useScrollController();
    final paginatedData = ref.watch(yourPaginatedDataNotifierProvider);

    useEffect(() {
      Future<void> onScroll() async {
        if (scrollController.position.atEdge) {
          final bool isBottom = scrollController.position.pixels == scrollController.position.maxScrollExtent;
          if (isBottom && !(paginatedData.value?.item3 ?? true)) { // Assuming item3 is hasReachedMax
            // Trigger to fetch next page
            ref.read(yourPaginatedDataNotifierProvider.notifier).fetchMoreData();
          }
        }
      }

      scrollController.addListener(onScroll);
      // Initial fetch
      ref.read(yourPaginatedDataNotifierProvider.notifier).initialFetch(
        genderId: genderId,
        cityId: cityId,
        educationalYearId: educationalYearId,
        age: age,
        scholarshipTypeId: scholarshipTypeId,
      );

      return () => scrollController.removeListener(onScroll);
    }, [scrollController]);

    return SafeArea(
      child: Scaffold(
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
                ? state.beneficiary.length
                : state.beneficiary.length + 1,
            itemBuilder: (context, index) {
              print(state.beneficiary.length);
              if (index >= state.beneficiary.length) {
                return const Center(child: CircularProgressIndicator());
              }
              final beneficaryItem = state.beneficiary[index];

              return GestureDetector(
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
