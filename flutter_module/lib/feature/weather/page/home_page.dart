import 'package:flutter/material.dart';
import 'package:flutter_module/common/util/geo_location.dart';
import 'package:flutter_module/feature/feature.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WeatherHomePage extends ConsumerWidget {
  const WeatherHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Weather Home Page')),
      body: ListView(
        children: [
          ListTile(
            title: const Text('City weather'),
            onTap: () {
              Navigator.pushNamed(context, WeatherRoutes.search);
            },
          ),
          ListTile(
            title: const Text('Current weather'),
            onTap: () async {
              final permission = await GeoLocation().isPermissionGranted;
              if (!permission) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Location permission is not granted'),
                  ),
                );
                return;
              }
              final location = await GeoLocation().getCurrentPosition();
              if (location == null) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Location is not available'),
                  ),
                );
                return;
              }
              Navigator.pushNamed(
                context,
                WeatherRoutes.current,
                arguments: Location(
                  name: 'Current location',
                  city: 'Current city',
                  latitude: location.latitude,
                  longitude: location.longitude,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
