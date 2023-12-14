import 'dart:io';

import '../api_client.dart';
import '../api_exception.dart';
import '../config/config.dart';
import '../dto/dto.dart';

class GeocodingApi {
  static GeocodingApi? _instance;

  final GeocodingApiClient geocodingApiClient;

  GeocodingApi._({
    GeocodingApiClient? client,
  }) : geocodingApiClient = client ?? GeocodingApiClient();

  factory GeocodingApi({GeocodingApiClient? client}) =>
      _instance ??= GeocodingApi._(client: client);

  Future<(RspGetCityList?, HttpError?)> getCityGeoData({
    required String city,
  }) async {
    final resp = await geocodingApiClient.dio.get(
      GeocodingRoutes.searchCity,
      queryParameters: ReqGetCity(
        name: city,
      ).queryParams,
    );
    return switch (resp.statusCode) {
      HttpStatus.ok => (RspGetCityList.fromJson(resp.data), null),
      _ => (
          null,
          HttpError(resp.statusCode ?? 0, resp.statusMessage ?? ''),
        )
    };
  }
}
