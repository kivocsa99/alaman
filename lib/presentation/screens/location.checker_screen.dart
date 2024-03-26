import 'package:alaman/application/donation/init_donation_use_case/init_donation_use_case.dart';
import 'package:alaman/application/donation/init_donation_use_case/init_donation_use_case.input.dart';
import 'package:alaman/routes/app_route.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:latlong2/latlong.dart';

@RoutePage()
class LocationCheckerScreen extends HookConsumerWidget {
  final int? paymentMethod;
  final int? donationTypeId;

  final double? amount;
  const LocationCheckerScreen(
      {super.key, this.paymentMethod, this.amount, this.donationTypeId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final markpointer = useState(const LatLng(31.9539, 35.9106));
    final isLoading = useState(false);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          isLoading.value = true;
          await ref
              .read(initDonationUseCaseProvider)
              .execute(
                InitDonationUseCaseInput(
                  paymentMethodId: paymentMethod,
                  donationTypeId: donationTypeId,
                  isRecurring: 0,
                  // startDate: ,
                  // endDate: ,
                  totalAmount: amount,
                ),
              )
              .then((value) => value.fold(
                    (l) async {
                      // Handle error
                      isLoading.value = false; // Hide loading indicator
                      Navigator.of(context).pop(); // Close the bottom sheet
                    },
                    (r) async {
                      isLoading.value = false; // Hide loading indicator
                      // Navigate to PaymentRoute
                      // First, pop the bottom sheet
                      // Then navigate to PaymentRoute
                      AutoRouter.of(context)
                          .replaceAll([MainRoute(isOrdered: true)]);
                    },
                  ));
        },
        child: isLoading.value == false
            ? const Icon(FontAwesomeIcons.check)
            : const CircularProgressIndicator(),
      ),
      body: FlutterMap(
        options: MapOptions(
          onTap: (tapPosition, point) {
            markpointer.value = point;
          },
          initialCenter: const LatLng(31.9539, 35.9106),
          initialZoom: 10,
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          ),
          MarkerLayer(
            markers: [
              Marker(
                point: markpointer.value,
                child: const Icon(
                  Icons.location_on,
                  color: Colors.red,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
