import 'package:flutter/material.dart';
import 'package:flutter_module/feature/weather/model/model.dart';
import 'package:flutter_module/feature/weather/provider/forecast.dart';
import 'package:flutter_module/feature/weather/view/view.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ForecastPage extends ConsumerStatefulWidget {
  final Location location;

  const ForecastPage({
    Key? key,
    required this.location,
  }) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => ForecastPageState();
}

class ForecastPageState extends ConsumerState<ForecastPage> {
  @override
  void initState() {
    super.initState();
    ref.read(forecastPodProvider.notifier).loadForecast(
          widget.location.latitude!,
          widget.location.longitude!,
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Forecast')),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Location: ${widget.location.name}',
              textAlign: TextAlign.center,
            ),
            if (ref.watch(forecastPodProvider) == null)
              const Center(child: CircularProgressIndicator()),
            if (ref.watch(forecastPodProvider) != null) const ForecastView(),
          ],
        ),
      ),
    );
  }
}
