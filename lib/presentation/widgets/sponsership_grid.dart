import 'package:alaman/application/provider/language.provider.dart';
import 'package:alaman/application/provider/user.repository.provider.dart';
import 'package:alaman/constants.dart';
import 'package:alaman/presentation/widgets/sponsership_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SponserShipGridView extends HookConsumerWidget {
  const SponserShipGridView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final generic = ref.watch(getGenericProvider);
    final locale =
        ref.watch(languageHiveNotifierProvider.notifier).getLanguage();
    return generic.when(
        data: (data) => data.fold(
            (l) => Text(l.message ?? "check your internet connection"),
            (r) => GridView.builder(
                  padding: const EdgeInsets.all(10),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.8,
                  ),
                  itemCount: r.DonorTypes!.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () async => showModalBottomSheet(
                        context: context,
                        backgroundColor: Colors.white,
                        enableDrag: true,
                        isScrollControlled: true,
                        barrierColor: Colors.grey.withOpacity(0.7),
                        builder: (BuildContext context) {
                          return SponserShipBottomSheet(
                              startAmount:
                                  toDouble(r.DonorTypes![index].start_amount!),
                              endAmount:
                                  toDouble(r.DonorTypes![index].end_amount!),
                              cities: r.Cities,
                              educationalYears: r.EducationalYears,
                              scholarships: r.ScholarshipTypes,
                              donationFrequency: r.DonationFrequencies!);
                        },
                      ),
                      child: Container(
                        padding: const EdgeInsets.only(
                            top: 10, bottom: 10, left: 10, right: 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.3),
                                spreadRadius: 2,
                                blurRadius: 7,
                                offset: const Offset(0, 3),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "${toCompactFormat(r.DonorTypes![index].start_amount!)}~${toCompactFormat(r.DonorTypes![index].end_amount!)}",
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                            ),
                            const SizedBox(height: 20),
                            SizedBox(
                              width: 70,
                              height: 70,
                              child: Image.network(
                                  "$storageUrl/${r.DonorTypes![index].image!}"),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              locale == "en"
                                  ? r.DonorTypes![index].name!
                                  : r.DonorTypes![index].name_ar!,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              locale == "en"
                                  ? r.DonorTypes![index].name!
                                  : r.DonorTypes![index].name_ar!,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                )),
        error: (error, stackTrace) => Text(error.toString()),
        loading: () => const CircularProgressIndicator());
  }
}
