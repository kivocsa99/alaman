import 'package:alaman/application/provider/user.repository.provider.dart';
import 'package:alaman/presentation/widgets/donation_bottom_sheet.dart';
import 'package:alaman/presentation/widgets/sadaqa_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class DonationsGridView extends HookConsumerWidget {
  DonationsGridView({super.key});

  final List<Map<String, dynamic>> donations = [
    {
      'id': 1,
      'title': 'Sponsership',
      'description':
          'Provide financial\nassistance for a young\nperson’s education',
      'image': 'assets/sponsership.png',
      'donation': "Reaccuring Donation"
    },
    {
      'id': 2,
      'title': 'Zakat',
      'description': 'Give a portion of your\nwealth to help those in\nneed',
      'image': 'assets/zakat.png',
      'donation': "One Time Donation"
    },
    {
      'id': 3,
      'title': 'Donate/Sadaqa',
      'description':
          'Spread kindness and\ncontribute funds to\nhelp those in need',
      'image': 'assets/sadaqa.png',
      'donation': "One Time & Reaccuring"
    },
    {
      'id': 4,
      'title': 'Ediah',
      'description':
          'Bring joy and festive\ncheer this eid season\nwith your donation',
      'image': 'assets/eid.png',
      'donation': "One Time Donation"
    },
  ];
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final generic = ref.watch(getGenericProvider);
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
                  itemCount: donations.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
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
                                : SadaqaBottomSheet(
                                    donationTypeId: donations[index]['id'],
                                    paymentMethods: r.PaymentMethods,
                                    donationFrequency: r.DonationFrequencies!,
                                    cities: r.Cities,
                                    educationalYears: r.EducationalYears,
                                  );
                          },
                        );
                      },
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
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    donations[index]['donation'],
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
                                    child: Image.asset(
                                      (index == 3 && r.EidiehEnabled!)
                                          ? "assets/eid_black.png"
                                          : donations[index]['image'],
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    donations[index]['title'],
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  Text(
                                    donations[index]['description'],
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                      color: Colors.grey,
                                      fontSize: 14,
                                    ),
                                  ),
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
                    );
                  },
                )),
        error: (error, stackTrace) => Text(error.toString()),
        loading: () => const CircularProgressIndicator());
  }
}
