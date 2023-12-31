import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/util/util.dart';
import '../../../generated/l10n.dart';
import '../provider/provider.dart';

class ForecastView extends ConsumerWidget {
  const ForecastView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pod = ref.watch(forecastProvider);
    Logger().i('ForecastView build: $pod');
    if (pod == null) return const Center(child: Text('No data'));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
            '${S.of(context).weather_forecast_hint_temperature}: ${pod.temperature}'),
        Text(
            '${S.of(context).weather_forecast_hint_wind_speed}: ${pod.windSpeed}'),
        Text(
            '${S.of(context).weather_forecast_hint_wind_direction}: ${pod.windDirection}'),
        Text(
            '${S.of(context).weather_forecast_hint_weather_code}: ${pod.weatherCode}'),
        Text('${S.of(context).weather_forecast_hint_is_day}: ${pod.isDay}'),
        Text('${S.of(context).weather_forecast_hint_time}: ${pod.time}'),
      ],
    );
  }
}
