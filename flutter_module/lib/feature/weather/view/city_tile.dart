import 'package:flutter/material.dart';
import 'package:flutter_module/feature/weather/config/config.dart';
import 'package:flutter_module/feature/weather/model/model.dart';
import 'package:flutter_module/feature/weather/provider/provider.dart';
import 'package:flutter_module/feature/weather/service/service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CityTile extends ConsumerWidget {
  final Location location;

  const CityTile({Key? key, required this.location}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      title: Text(location.name ?? ''),
      subtitle: Text(location.city ?? ''),
      onTap: () async {
        if (location.latitude == null || location.longitude == null) return;
        final w = await WeatherService().getWeatherForecast(
          latitude: location.latitude!,
          longitude: location.longitude!,
        );
        ref.read(forecastPodProvider.notifier).set(w);
        if (!context.mounted) return;
        Navigator.pushNamed(
          context,
          WeatherRoutes.current,
          arguments: location,
        );
      },
    );
  }
}
