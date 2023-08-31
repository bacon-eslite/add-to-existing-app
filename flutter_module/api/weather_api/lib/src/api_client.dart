import 'package:dio/dio.dart';
import 'package:weather_api/src/api_helper.dart';

class WeatherApiClient {
  static WeatherApiClient? _instance;

  factory WeatherApiClient({Dio? dio}) =>
      _instance ??= WeatherApiClient._(dio: dio);

  final Dio _dio;

  Dio get dio => _dio;

  WeatherApiClient._({Dio? dio})
      : _dio = dio ??
            Dio(
              BaseOptions(
                baseUrl: Routes.weatherUrl,
                connectTimeout: const Duration(seconds: 120),
                receiveTimeout: const Duration(seconds: 120),
              ),
            );
}

class GeocodingApiClient {
  static GeocodingApiClient? _instance;

  factory GeocodingApiClient({Dio? dio}) =>
      _instance ??= GeocodingApiClient._(dio: dio);

  final Dio _dio;

  Dio get dio => _dio;

  GeocodingApiClient._({Dio? dio})
      : _dio = dio ??
            Dio(
              BaseOptions(
                baseUrl: Routes.geocodingUrl,
                connectTimeout: const Duration(seconds: 120),
                receiveTimeout: const Duration(seconds: 120),
              ),
            );
}
