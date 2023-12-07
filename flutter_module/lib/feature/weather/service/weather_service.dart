import 'package:weather_api/weather_api.dart' as api;

import '../../../common/util/logger.dart';
import '../model/model.dart';

class WeatherService {
  final api.WeatherApi _weatherApi;

  static WeatherService? _instance;

  WeatherService._({
    api.WeatherApi? weatherApi,
  }) : _weatherApi = weatherApi ?? api.WeatherApi();

  factory WeatherService({api.WeatherApi? weatherApi}) =>
      _instance ??= WeatherService._(weatherApi: weatherApi);

  Future<Forecast?> getWeatherForecast({
    required double latitude,
    required double longitude,
  }) async {
    final (resp, err) = await _weatherApi.getWeatherForecast(
      latitude: latitude,
      longitude: longitude,
    );
    if (err != null) {
      Logger.e(err.message);
      return null;
    }
    return Forecast.fromDto(resp!);
  }
}
