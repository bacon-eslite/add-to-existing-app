import 'package:flutter/material.dart';
import 'package:flutter_module/feature/weather/provider/location.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

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
              context.push(WeatherRoutes.search);
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
              final location = await ref
                  .read(locationListProvider.notifier)
                  .getCurrentLocation();
              if (!context.mounted) return;
              if (location == null) {
                showSnackBar(
                  context,
                  S.of(context).weather_hint_location_not_available,
                );
                return;
              }
              context.push(
                '${WeatherRoutes.forecast}/current',
              );
            },
          ),
        ],
      ),
    );
  }
}
