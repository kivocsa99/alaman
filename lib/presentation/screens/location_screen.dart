import 'package:alaman/application/provider/language.provider.dart';
import 'package:alaman/application/provider/user.repository.provider.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:easy_localization/easy_localization.dart';

@RoutePage()
class LocationScreen extends StatefulHookConsumerWidget {
  const LocationScreen({super.key});

  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends ConsumerState<LocationScreen> {
  GoogleMapController? _mapController;

  void _onMapCreated(GoogleMapController controller) {
    _mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    final locale = ref.watch(languageHiveNotifierProvider);
    final generic = ref.watch(getGenericProvider);
    return generic.when(
      data: (data) => data.fold(
        (l) => Text(l.message ?? "internetconnection").tr(),
        (r) {
          final markers = r.Booths!.map((e) => e.location).toList();
          if (markers.isEmpty) return const SizedBox.shrink(); // Handle empty or null markers list
          final initialPosition = LatLng(markers[0]!["lat"], markers[0]!["lng"]);
          return SafeArea(
            child: Scaffold(
              body: Stack(
                children: [
                  GoogleMap(
                    onMapCreated: _onMapCreated,
                    initialCameraPosition: CameraPosition(
                      target: initialPosition,
                      zoom: 15.0,
                    ),
                    markers: markers.map((location) {
                      return Marker(
                        markerId: MarkerId('${location!["lat"]},${location["lng"]}'),
                        position: LatLng(location["lat"], location["lng"]),
                      );
                    }).toSet(),
                  ),
                  DraggableScrollableSheet(
                    initialChildSize: 0.5, // Half the screen
                    minChildSize: 0.1,
                    maxChildSize: 0.5,
                    builder: (BuildContext ctx, ScrollController scrollController) {
                      return Container(
                        padding: const EdgeInsets.all(20),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50.0),
                            topRight: Radius.circular(50.0),
                          ),
                        ),
                        child: ListView.builder(
                          controller: scrollController,
                          itemCount: markers.length,
                          itemBuilder: (BuildContext context, int index) {
                            final markerLocation = markers[index];
                            return ListTile(
                              onTap: () => _mapController?.animateCamera(
                                CameraUpdate.newLatLng(
                                  LatLng(markerLocation!["lat"], markerLocation["lng"]),
                                ),
                              ),
                              onLongPress: () async {
                                final url = 'https://maps.google.com/maps?q=${markerLocation!["lat"]},${markerLocation["lng"]}';
                                if (!await launchUrl(Uri.parse(url))) {
                                  throw 'Could not launch Google Maps';
                                }
                              },
                              leading: const Icon(
                                Icons.location_pin,
                                size: 50,
                                color: Color(0xffFFC629),
                              ),
                              title: Text(
                                locale == "en" ? r.Booths![index].name! : r.Booths![index].name_ar!,
                                style: Theme.of(context).primaryTextTheme.titleSmall!.copyWith(color: Color(0xff16437B), fontSize: 15),
                              ),
                            );
                          },
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
      error: (error, stackTrace) => Text(stackTrace.toString()),
      loading: () => const CircularProgressIndicator(),
    );
  }
}
