import 'package:flutter/material.dart';
import 'package:flutter_module/common/util/util.dart';
import 'package:flutter_module/feature/weather/provider/provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ForecastView extends ConsumerWidget {
  const ForecastView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pod = ref.watch(forecastPodProvider);
    Logger.i('pod: $pod');
    if (pod == null) return const Center(child: Text('No data'));

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text('Temperature: ${pod.temperature}'),
        Text('Wind Speed: ${pod.windSpeed}'),
        Text('Wind Direction: ${pod.windDirection}'),
        Text('Weather Code: ${pod.weatherCode}'),
        Text('Is Day: ${pod.isDay}'),
        Text('Time: ${pod.time}'),
      ],
    );
  }
}
