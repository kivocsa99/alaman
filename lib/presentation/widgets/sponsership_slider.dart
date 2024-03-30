import 'package:alaman/application/provider/language.provider.dart';
import 'package:alaman/application/provider/user.repository.provider.dart';
import 'package:alaman/constants.dart';
import 'package:alaman/presentation/widgets/sponsership_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';

class SponsershipSlider extends HookConsumerWidget {
  const SponsershipSlider({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final generic = ref.watch(getGenericProvider);
    final locale =
        ref.watch(languageHiveNotifierProvider.notifier).getLanguage();
    return SizedBox(
      width: double.infinity,
      height: 150,
      child: generic.when(
          data: (data) => data.fold(
              (l) => Text(l.message ?? ""),
              (r) => ListView.separated(
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) => const Gap(20),
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () async => showModalBottomSheet(
                          context: context,
                          backgroundColor: Colors.white,
                          enableDrag: true,
                          isScrollControlled: true,
                          barrierColor: Colors.grey.withOpacity(0.7),
                          builder: (BuildContext context) {
                            return SponserShipBottomSheet(
                                cities: r.Cities,
                                startAmount: toDouble(
                                    r.DonorTypes![index].start_amount!),
                                endAmount:
                                    toDouble(r.DonorTypes![index].end_amount!),
                                educationalYears: r.EducationalYears,
                                scholarships: r.ScholarshipTypes,
                                donationFrequency: r.DonationFrequencies!);
                          },
                        ),
                        child: Container(
                          width: 150,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
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
                          child: ResponsiveRowColumn(
                            layout: ResponsiveRowColumnType.COLUMN,
                            columnMainAxisAlignment:
                                MainAxisAlignment.spaceAround,
                            columnCrossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ResponsiveRowColumnItem(
                                  child: Container(
                                width: 70,
                                height: 40,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: Image.network(
                                                "$storageUrl/${r.DonorTypes![index].image!}")
                                            .image,
                                        fit: BoxFit.contain)),
                              )),
                              ResponsiveRowColumnItem(
                                  child: Text(
                                textAlign: TextAlign.center,
                                locale == "en"
                                    ? r.DonorTypes![index].name!
                                    : r.DonorTypes![index].name_ar!,
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .bodyMedium
                                    ?.copyWith(color: const Color(0xff16437B)),
                              )),
                              ResponsiveRowColumnItem(
                                  child: Text(
                                "${toCompactFormat(r.DonorTypes![index].start_amount!)}~${toCompactFormat(r.DonorTypes![index].end_amount!)}",
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .primaryTextTheme
                                    .bodyMedium
                                    ?.copyWith(fontSize: 14),
                              )),
                            ],
                          ),
                        ),
                      ),
                    ),
                    itemCount: r.DonorTypes!.length,
                  )),
          error: (error, stackTrace) => Text(error.toString()),
          loading: () => const CircularProgressIndicator()),
    );
  }
}
