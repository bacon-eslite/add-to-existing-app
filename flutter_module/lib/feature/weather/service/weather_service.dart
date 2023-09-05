import 'package:flutter_module/common/util/logger.dart';
import 'package:flutter_module/feature/weather/model/model.dart';
import 'package:weather_api/weather_api.dart' as api;

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
    final resp = await _weatherApi.getWeatherForecast(
      latitude: latitude,
      longitude: longitude,
    );
    final error = resp.item2;
    if (error != null) {
      Logger.e(error.message);
      return null;
    }
    return Forecast.fromDto(resp.item1!);
  }
}
