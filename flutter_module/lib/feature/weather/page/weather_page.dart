import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/config/config.dart';
import '../../../common/util/geo_location.dart';
import '../../../common/view/view.dart';
import '../../../generated/l10n.dart';
import '../../feature.dart';

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
              // ignore: use_build_context_synchronously
              if (!context.mounted) return;
              if (!permission) {
                showSnackBar(
                  context,
                  S.of(context).weather_hint_location_not_available,
                );
                return;
              }
              final location = await GeoLocation().getCurrentPosition();
              // ignore: use_build_context_synchronously
              if (!context.mounted) return;
              if (location == null) {
                showSnackBar(
                  context,
                  S.of(context).weather_hint_location_not_available,
                );
                return;
              }
              AppRoutes.navigateTo(
                  context,
                  WeatherRoutes.current,
                  Location(
                    name: S.of(context).weather_current_weather,
                    city: S.of(context).weather_current_weather,
                    latitude: location.latitude,
                    longitude: location.longitude,
                  ));
            },
          ),
        ],
      ),
    );
  }
}
