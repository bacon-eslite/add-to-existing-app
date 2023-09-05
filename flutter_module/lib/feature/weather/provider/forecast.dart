import 'package:flutter_module/common/util/util.dart';
import 'package:flutter_module/feature/weather/model/model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../service/service.dart';

part 'forecast.g.dart';

@riverpod
class ForecastPod extends _$ForecastPod {
  @override
  Forecast? build() => null;

  Future loadForecast(double latitude, double longitude) async {
    final forecast = await WeatherService().getWeatherForecast(
      latitude: latitude,
      longitude: longitude,
    );
    Logger.d('forecast: $forecast');
    state = forecast;
  }

  void reset() {
    state = null;
  }
}
