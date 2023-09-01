import 'package:weather_api/src/api_client.dart';
import 'package:weather_api/src/config/config.dart';
import 'package:weather_api/src/model/req_get_weather_forecast.dart';

class WeatherApi {
  static WeatherApi? _instance;

  final WeatherApiClient client;

  WeatherApi._({
    WeatherApiClient? client,
  }) : client = client ?? WeatherApiClient();

  factory WeatherApi({WeatherApiClient? client}) =>
      _instance ??= WeatherApi._(client: client);

  Future<dynamic> getWeatherForecast({
    required double latitude,
    required double longitude,
  }) async {
    final response = await client.dio.get(
      WeatherRoutes.forecast,
      queryParameters: ReqGetWeatherForecast(
        latitude: latitude,
        longitude: longitude,
      ).queryParams,
    );
    return response.data;
  }
}
