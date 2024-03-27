// import 'package:alaman/application/provider/user.repository.provider.dart';
// import 'package:alaman/presentation/widgets/donation_bottom_sheet.dart';
// import 'package:alaman/presentation/widgets/eid_bottom_sheet.dart';
// import 'package:alaman/presentation/widgets/sadaqa_bottom_sheet.dart';
// import 'package:alaman/presentation/widgets/zakat_bottom_sheet.dart';
// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

// class SponserShipGridView extends HookConsumerWidget {
//   const SponserShipGridView({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final generic = ref.watch(getGenericProvider);
//     return generic.when(
//         data: (data) => data.fold(
//             (l) => Text(l.message ?? "check your internet connection"),
//             (r) => GridView.builder(
//                   padding: const EdgeInsets.all(10),
//                   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 2,
//                     crossAxisSpacing: 10,
//                     mainAxisSpacing: 10,
//                     childAspectRatio: 0.8,
//                   ),
//                   itemCount: r.DonationTypes!.length,
//                   itemBuilder: (context, index) {
//                     return GestureDetector(
//                       onTap: () async {},
//                       child: Stack(
//                         children: [
//                           Positioned.fill(
//                             child: Container(
//                               padding: const EdgeInsets.only(
//                                   top: 10, bottom: 10, left: 10, right: 10),
//                               decoration: BoxDecoration(
//                                   color: Colors.white,
//                                   boxShadow: [
//                                     BoxShadow(
//                                       color: Colors.grey.withOpacity(0.3),
//                                       spreadRadius: 2,
//                                       blurRadius: 7,
//                                       offset: const Offset(0, 3),
//                                     ),
//                                   ],
//                                   borderRadius: BorderRadius.circular(15)),
//                               child: Column(
//                                 mainAxisAlignment: MainAxisAlignment.center,
//                                 mainAxisSize: MainAxisSize.min,
//                                 children: [
//                                   Text(
//                                     "${r.DonorTypes![index].start_amount}~${r.DonorTypes![index].end_amount}",
//                                     textAlign: TextAlign.center,
//                                     style: const TextStyle(
//                                       color: Colors.grey,
//                                       fontSize: 14,
//                                     ),
//                                   ),
//                                   const SizedBox(height: 20),
//                                   SizedBox(
//                                     width: 70,
//                                     height: 70,
//                                     child: Image.asset(
//                                       "assets/zakat.png",
//                                       fit: BoxFit.contain,
//                                     ),
//                                   ),
//                                   const SizedBox(height: 10),
//                                   Text(
//                                     r.DonorTypes![index].name!,
//                                     textAlign: TextAlign.center,
//                                     style: const TextStyle(
//                                       fontWeight: FontWeight.bold,
//                                       fontSize: 16,
//                                     ),
//                                   ),
//                                   const SizedBox(height: 5),
//                                   Text(
//                                     r.DonorTypes![index].name!,
//                                     textAlign: TextAlign.center,
//                                     style: const TextStyle(
//                                       color: Colors.grey,
//                                       fontSize: 14,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                           if (r.EidiehEnabled! && index == 3)
//                             Positioned.fill(
//                               child: Container(
//                                 decoration: BoxDecoration(
//                                   color: Colors.black.withOpacity(0.5),
//                                   borderRadius: BorderRadius.circular(15),
//                                 ),
//                                 child: Center(
//                                   child: SizedBox(
//                                     width: 50,
//                                     height: 50,
//                                     child: Image.asset(
//                                       "assets/lock.png",
//                                       fit: BoxFit.contain,
//                                     ),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                         ],
//                       ),
//                     );
//                   },
//                 )),
//         error: (error, stackTrace) => Text(error.toString()),
//         loading: () => const CircularProgressIndicator());
//   }
// }
