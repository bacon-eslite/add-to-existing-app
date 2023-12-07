import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../generated/l10n.dart';
import '../model/model.dart';
import '../provider/forecast.dart';
import '../view/view.dart';

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
    ref.read(forecastProvider.notifier).loadForecast(
          widget.location.latitude!,
          widget.location.longitude!,
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).home_menu_weather)),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              '${S.of(context).weather_forecast_hint_location}: ${widget.location.name}',
              textAlign: TextAlign.center,
            ),
            if (ref.watch(forecastProvider) == null)
              const Center(child: CircularProgressIndicator()),
            if (ref.watch(forecastProvider) != null) const ForecastView(),
          ],
        ),
      ),
    );
  }
}
