import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/model.dart';
import '../service/service.dart';

part 'forecast.g.dart';

@riverpod
class ForecastProvider extends _$ForecastProvider {
  @override
  Forecast? build() => null;

  Future loadForecast(double latitude, double longitude) async {
    final forecast = await WeatherService().getWeatherForecast(
      latitude: latitude,
      longitude: longitude,
    );
    state = forecast;
  }

  void reset() {
    state = null;
  }
}
