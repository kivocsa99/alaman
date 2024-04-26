import 'package:alaman/application/provider/hive.setting.provider.dart';
import 'package:alaman/application/provider/language.provider.dart';
import 'package:alaman/application/provider/user.repository.provider.dart';
import 'package:alaman/domain/booth/model/booth.model.dart';
import 'package:alaman/presentation/widgets/gps_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_launcher/url_launcher.dart';

class NearestLocation extends HookConsumerWidget {
  const NearestLocation({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
        final locale = ref.watch(languageHiveNotifierProvider);

    final generic = ref.watch(getGenericProvider);
    final currentPosition = useState<Position?>(null);
    final nearestBoothFuture = useFuture(
      useMemoized(() {
        return generic.maybeWhen(
          data: (data) => data.fold(
            (l) => Future.value(null),
            (r) async {
              currentPosition.value = await _determinePosition();
              final List<BoothModel>? booths = r.Booths;
              if (booths != null && currentPosition.value != null) {
                return _findNearestBooth(booths);
              }
              return null;
            },
          ),
          orElse: () => Future.value(null),
        );
      }, [generic]),
      preserveState: false,
    );
    if (nearestBoothFuture.connectionState == ConnectionState.waiting) {
      return const CircularProgressIndicator();
    } else if (nearestBoothFuture.hasError) {
      return Text('Error: ${nearestBoothFuture.error}');
    } else if (nearestBoothFuture.hasData) {
      final nearestBooth = nearestBoothFuture.data;

      if (nearestBooth == null) {
        return const Text(
            "No booths available or location permission not granted");
      }
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: GestureDetector(
          onTap: () async {
            if (!await launchUrl(Uri.parse(
                "https://maps.google.com/maps?q=${nearestBooth.location!["lat"]},${nearestBooth.location!["lng"]}"))) {
              throw Exception('Could not launch ');
            }
          },
          child: Container(
            padding: const EdgeInsets.all(10),
            width: double.infinity,
            height: 80,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: ResponsiveRowColumn(
              layout: ResponsiveRowColumnType.ROW,
              rowCrossAxisAlignment: CrossAxisAlignment.center,              children: [
                ResponsiveRowColumnItem(
                    child: Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    CustomPaint(
                      size: Size(
                        50,
                        (50 * 1.2954963235294117).toDouble(),
                      ),
                      painter: RPSCustomPainter(),
                    ),
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: Image.asset(
                        'assets/gps.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                )),
                const ResponsiveRowColumnItem(child: Gap(20)),
                ResponsiveRowColumnItem(
                    child: ResponsiveRowColumn(
                  layout: ResponsiveRowColumnType.COLUMN,
                  columnMainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    
                    ResponsiveRowColumnItem(
                        child: Text(
                      locale == "en"
                          ? nearestBooth.name!
                          : nearestBooth.name_ar!,
                      style: Theme.of(context)
                          .primaryTextTheme
                          .bodyMedium!
                          .copyWith(color: const Color(0xff16437B)),
                    ))
                  ],
                )),
              ],
            ),
          ),
        ),
      );
    } else {
      return const Text("Unknown state");
    }
  }

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    return await Geolocator.getCurrentPosition();
  }

  Future<BoothModel?> _findNearestBooth(List<BoothModel> booths) async {
    Position currentPosition = await _determinePosition();

    double minDistance = double.infinity;
    BoothModel? nearestBooth;

    for (var booth in booths) {
      double boothDistance = Geolocator.distanceBetween(
        currentPosition.latitude,
        currentPosition.longitude,
        booth.location!["lat"],
        booth.location!["lng"],
      );

      if (boothDistance < minDistance) {
        minDistance = boothDistance;
        nearestBooth = booth;
      }
    }

    return nearestBooth;
  }
}
