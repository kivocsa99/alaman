import 'package:alaman/application/donation/init_donation_use_case/init_donation_use_case.dart';
import 'package:alaman/application/donation/init_donation_use_case/init_donation_use_case.input.dart';
import 'package:alaman/application/provider/language.provider.dart';
import 'package:alaman/presentation/screens/main_screen.dart';
import 'package:alaman/presentation/widgets/time_picker_bottom_sheet.dart';
import 'package:alaman/routes/app_route.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';


Future<LatLng> getCurrentLocation() async {
  LocationPermission permission = await Geolocator.checkPermission();

  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      throw Exception('Location permissions are denied');
    }
  }
  if (permission == LocationPermission.deniedForever) {
    throw Exception('Location permissions are permanently denied');
  }

  Position position = await Geolocator.getCurrentPosition();
  return LatLng(position.latitude, position.longitude);
}

@RoutePage()
class LocationCheckerScreen extends HookConsumerWidget {
  final int? paymentMethod;
  final int? donationTypeId;
  final int? recurring;
  final int? donationFrequencyId;
  final String? startDate;
  final String? endDate;
  final double? amount;
  final List<int>? beneficiaries;
  final String? notes;
  const LocationCheckerScreen(
      {super.key, this.notes, this.paymentMethod, this.beneficiaries, this.startDate, this.endDate, this.donationFrequencyId, this.amount, this.donationTypeId, this.recurring});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locationFuture = useMemoized(getCurrentLocation);
    final snapshot = useFuture(locationFuture);
        final locale = ref.watch(languageHiveNotifierProvider);

    print(snapshot.data);
    final isLoading = useState(false);
    if (snapshot.connectionState == ConnectionState.waiting) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }
    if (snapshot.hasError) {
      return Scaffold(body: Center(child: Text("Error fetching location: ${snapshot.error}")));
    }
    final markpointer = useState(snapshot.data ?? const LatLng(31.9539, 35.9106));

    return Scaffold(
      floatingActionButtonLocation:locale=="en"? FloatingActionButtonLocation.startDocked:FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await showModalBottomSheet(context: context, builder:(context) => TimePickerBottomSheet(
            paymentMethod: paymentMethod,
            donationFrequencyId: donationFrequencyId,
            donationTypeId: donationTypeId,
            recurring: recurring,
            startDate: startDate,
            endDate: endDate,
            amount: amount,
            beneficiaries: beneficiaries,
            notes: notes,
            location: markpointer.value,

          ),);
        },
        child: isLoading.value == false ? const Icon(FontAwesomeIcons.check) : const CircularProgressIndicator(),
      ),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(markpointer.value.latitude, markpointer.value.longitude),
          zoom: 15,
        ),
        markers: {
          Marker(
            markerId: MarkerId("currentLocation"),
            position: LatLng(markpointer.value.latitude, markpointer.value.longitude),
          ),
        },
        onTap: (LatLng position) {
          markpointer.value = position;
        },
      ),
    );
  }
}
