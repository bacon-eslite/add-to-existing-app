import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../common/util/util.dart';
import '../model/model.dart';
import '../service/service.dart';

part 'forecast.g.dart';

@riverpod
class ForecastProvider extends _$Forecast {
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
