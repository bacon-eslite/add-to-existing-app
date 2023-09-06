import 'package:flutter/material.dart';
import 'package:flutter_module/common/util/geo_location.dart';
import 'package:flutter_module/feature/feature.dart';
import 'package:flutter_module/generated/l10n.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class WeatherHomePage extends ConsumerWidget {
  const WeatherHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).home_menu_weather)),
      body: ListView(
        children: [
          ListTile(
            title: Text(S.of(context).weather_city_weather),
            onTap: () {
              Navigator.pushNamed(context, WeatherRoutes.search);
            },
          ),
          ListTile(
            title: Text(S.of(context).weather_current_weather),
            onTap: () async {
              final permission = await GeoLocation().isPermissionGranted;
              if (!context.mounted) return;
              if (!permission) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(S.of(context).permission_denied_geolocation),
                  ),
                );
                return;
              }
              final location = await GeoLocation().getCurrentPosition();
              if (!context.mounted) return;
              if (location == null) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content:
                        Text(S.of(context).weather_hint_location_not_available),
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
