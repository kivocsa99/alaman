import 'package:alaman/application/provider/user.repository.provider.dart';
import 'package:alaman/presentation/widgets/donation_bottom_sheet.dart';
import 'package:alaman/presentation/widgets/eid_bottom_sheet.dart';
import 'package:alaman/presentation/widgets/request_bottom_sheet.dart';
import 'package:alaman/presentation/widgets/sadaqa_bottom_sheet.dart';
import 'package:alaman/presentation/widgets/zakat_bottom_sheet.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';

class DonorDonationSlider extends HookConsumerWidget {
  const DonorDonationSlider({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final donations = useState<List<Map<String, dynamic>>>([
      {
        'id': 1,
        'title': 'sponsership',
        'description': "sponsershipdes",
        'image': 'assets/sponsership.png',
        'donation': "recurring"
      },
      {
        'id': 2,
        'title': 'zakat',
        'description': "zakatdes",
        'image': 'assets/zakat.png',
        'donation': "ontime"
      },
      {
        'id': 3,
        'title': "sadaqa",
        'description': "sadaqades",
        'image': 'assets/sadaqa.png',
        'donation': "onetimeandrecurring"
      },
      {
        'id': 4,
        'title': 'ediah',
        'description': "eidiehdes",
        'image': 'assets/eid.png',
        'donation': "ontime"
      },
    ]);

    final generic = ref.watch(getGenericProvider);

    return generic.when(
        data: (data) => data.fold(
            (l) => Text(l.message ?? "check your internet connection"),
            (r) => Container(
                  color: Colors.transparent,
                  width: double.infinity,
                  height: 180,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) => const Gap(20),
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () async {
                          showModalBottomSheet(
                            context: context,
                            backgroundColor: Colors.white,
                            enableDrag: true,
                            isScrollControlled: true,
                            barrierColor: Colors.grey.withOpacity(0.7),
                            builder: (BuildContext ctx) {
                              return index == 0
                                  ? DonationBottomSheet(
                                      cities: r.Cities,
                                      educationalYears: r.EducationalYears,
                                      scholarships: r.ScholarshipTypes)
                                  : index == 2
                                      ? SadaqaBottomSheet(
                                          paymentMethods: r.PaymentMethods,
                                          donationFrequency:
                                              r.DonationFrequencies!,
                                          cities: r.Cities,
                                          educationalYears: r.EducationalYears,
                                        )
                                      : index == 1
                                          ? ZaqatBottomSheet(
                                              paymentMethods: r.PaymentMethods,
                                            )
                                          : EidBottomSheet(
                                              paymentMethods: r.PaymentMethods,
                                              donationFrequency:
                                                  r.DonationFrequencies!,
                                              cities: r.Cities,
                                              educationalYears:
                                                  r.EducationalYears,
                                            );
                            },
                          );
                        },
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 2.3,
                          height: 120,
                          child: Stack(
                            children: [
                              Positioned.fill(
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
                                  child: ResponsiveRowColumn(
                                    layout: ResponsiveRowColumnType.COLUMN,
                                    columnMainAxisAlignment:
                                        MainAxisAlignment.end,
                                    columnCrossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      ResponsiveRowColumnItem(
                                          child: Container(
                                        width: 70,
                                        height: 70,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: Image.asset(donations
                                                        .value[index]["image"])
                                                    .image,
                                                fit: BoxFit.contain)),
                                      )),
                                      const ResponsiveRowColumnItem(
                                        child: Gap(10),
                                      ),
                                      ResponsiveRowColumnItem(
                                          child: Text(
                                        donations.value[index]["title"],
                                        textAlign: TextAlign.center,
                                        style: Theme.of(context)
                                            .primaryTextTheme
                                            .bodyLarge
                                            ?.copyWith(
                                              color: const Color(0xff16437B),
                                            ),
                                      ).tr()),
                                      ResponsiveRowColumnItem(
                                          child: Text(
                                        donations.value[index]["donation"],
                                        textAlign: TextAlign.center,
                                        style: Theme.of(context)
                                            .primaryTextTheme
                                            .bodyMedium
                                            ?.copyWith(fontSize: 14),
                                      ).tr()),
                                    ],
                                  ),
                                ),
                              ),
                              if (r.EidiehEnabled! && index == 3)
                                Positioned.fill(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.5),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Center(
                                      child: SizedBox(
                                        width: 50,
                                        height: 50,
                                        child: Image.asset(
                                          "assets/lock.png",
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    itemCount: 4,
                  ),
                )),
        error: (error, stackTrace) => Text(error.toString()),
        loading: () => const CircularProgressIndicator());
  }
}
