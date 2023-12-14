import 'dart:io';

import '../api_client.dart';
import '../api_exception.dart';
import '../config/config.dart';
import '../dto/dto.dart';

class WeatherApi {
  static WeatherApi? _instance;

  final WeatherApiClient client;

  WeatherApi._({
    WeatherApiClient? client,
  }) : client = client ?? WeatherApiClient();

  factory WeatherApi({WeatherApiClient? client}) =>
      _instance ??= WeatherApi._(client: client);

  Future<(RspGetForecast?, HttpError?)> getWeatherForecast({
    required double latitude,
    required double longitude,
  }) async {
    final resp = await client.dio.get(
      WeatherRoutes.forecast,
      queryParameters: ReqGetForecast(
        latitude: latitude,
        longitude: longitude,
      ).queryParams,
    );
    return switch (resp.statusCode) {
      HttpStatus.ok => (RspGetForecast.fromJson(resp.data), null),
      _ => (
          null,
          HttpError(resp.statusCode ?? 0, resp.statusMessage ?? ''),
        )
    };
  }
}
