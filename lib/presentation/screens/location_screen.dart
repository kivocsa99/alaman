import 'package:alaman/application/provider/hive.setting.provider.dart';
import 'package:alaman/application/provider/language.provider.dart';
import 'package:alaman/application/provider/user.repository.provider.dart';
import 'package:alaman/presentation/widgets/responsive_widget.dart';
import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:latlong2/latlong.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class LocationScreen extends HookConsumerWidget {
  const LocationScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale =
        ref.watch(languageHiveNotifierProvider.notifier).getLanguage();
    final MapController mapController = MapController();
    final generic = ref.watch(getGenericProvider);
    return generic.when(
        data: (data) =>
            data.fold((l) => Text(l.message ?? "internetconnection").tr(), (r) {
              final markers = r.Booths!.map((e) => e.location).toList();
              return SafeArea(
                child: Scaffold(
                  body: ResponsiveWidget(
                    child: Scaffold(
                      body: Stack(
                        children: <Widget>[
                          FlutterMap(
                            mapController: mapController,
                            options: MapOptions(
                              initialCenter: LatLng(
                                  markers[0]!["lat"],
                                  markers[0]![
                                      'lng']), // Initial center of the map
                              initialZoom: 15.0,
                            ),
                            children: <Widget>[
                              TileLayer(
                                urlTemplate:
                                    "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                                subdomains: ['a', 'b', 'c'],
                              ),
                              MarkerLayer(
                                markers: markers
                                    .map((location) => Marker(
                                          width: 80.0,
                                          height: 80.0,
                                          point: LatLng(location!["lat"],
                                              location['lng']),
                                          child: const Icon(Icons.location_pin,
                                              color: Colors.red),
                                        ))
                                    .toList(),
                              ),
                            ],
                          ),
                          DraggableScrollableSheet(
                            initialChildSize: 0.5, // Half the screen
                            minChildSize: 0.1,
                            maxChildSize: 0.5,
                            builder: (BuildContext context,
                                ScrollController scrollController) {
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
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return ListTile(
                                      onLongPress: () async {
                                        if (!await launchUrl(Uri.parse(
                                            "https://maps.google.com/maps?q=${r.Booths![index].location!["lat"]},${r.Booths![index].location!["lng"]}"))) {
                                          throw Exception('Could not launch ');
                                        }
                                      },
                                      leading: const Icon(
                                        Icons.location_pin,
                                        size: 50,
                                        color: Color(0xffFFC629),
                                      ),
                                      title: Text(
                                        locale == "en"
                                            ? r.Booths![index].name!
                                            : r.Booths![index].name_ar!,
                                        style: Theme.of(context)
                                            .primaryTextTheme
                                            .titleSmall!
                                            .copyWith(color: Color(0xff16437B)),
                                      ),
                                      subtitle: Text(
                                        locale == "en"
                                            ? r.Booths![index].name!
                                            : r.Booths![index].name_ar!,
                                        style: Theme.of(context)
                                            .primaryTextTheme
                                            .bodyMedium!,
                                      ),
                                      onTap: () => mapController.move(
                                          LatLng(markers[index]!["lat"],
                                              markers[index]!['lng']),
                                          15.0),
                                    );
                                  },
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }),
        error: (error, stackTrace) {
          print(stackTrace);
          return Text(stackTrace.toString());
        },
        loading: () => const CircularProgressIndicator());
  }
}
