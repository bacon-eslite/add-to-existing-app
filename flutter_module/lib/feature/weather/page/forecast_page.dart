import 'package:flutter/material.dart';
import 'package:flutter_module/feature/weather/provider/city_list.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../generated/l10n.dart';
import '../provider/forecast.dart';
import '../view/view.dart';

class ForecastPage extends ConsumerStatefulWidget {
  final String city;

  const ForecastPage({
    Key? key,
    required this.city,
  }) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => ForecastPageState();
}

class ForecastPageState extends ConsumerState<ForecastPage> {
  @override
  void initState() {
    super.initState();
    final l = ref.read(cityListProvider.notifier).getByName(widget.city);
    ref.read(forecastProvider.notifier).loadForecast(l.latitude!, l.longitude!);
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
              '${S.of(context).weather_forecast_hint_location}: ${widget.city}',
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
