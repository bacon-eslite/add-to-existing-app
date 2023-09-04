import 'dart:io';

import 'package:tuple/tuple.dart';
import 'package:weather_api/src/api_client.dart';
import 'package:weather_api/src/api_exception.dart';
import 'package:weather_api/src/config/config.dart';
import 'package:weather_api/src/model/model.dart';

class WeatherApi {
  static WeatherApi? _instance;

  final WeatherApiClient client;

  WeatherApi._({
    WeatherApiClient? client,
  }) : client = client ?? WeatherApiClient();

  factory WeatherApi({WeatherApiClient? client}) =>
      _instance ??= WeatherApi._(client: client);

  Future<Tuple2<Weather?, HttpError?>> getWeatherForecast({
    required double latitude,
    required double longitude,
  }) async {
    final resp = await client.dio.get(
      WeatherRoutes.forecast,
      queryParameters: ReqGetWeatherForecast(
        latitude: latitude,
        longitude: longitude,
      ).queryParams,
    );
    return switch (resp.statusCode) {
      HttpStatus.ok => Tuple2(Weather.fromJson(resp.data), null),
      _ => Tuple2(
          null,
          HttpError(resp.statusCode ?? 0, resp.statusMessage ?? ''),
        )
    };
  }
}
