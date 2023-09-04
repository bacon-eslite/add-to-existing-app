import 'dart:io';

import 'package:tuple/tuple.dart';
import 'package:weather_api/src/api_client.dart';
import 'package:weather_api/src/api_exception.dart';
import 'package:weather_api/src/config/config.dart';
import 'package:weather_api/src/model/model.dart';

class GeocodingApi {
  static GeocodingApi? _instance;

  final GeocodingApiClient geocodingApiClient;

  GeocodingApi._({
    GeocodingApiClient? client,
  }) : geocodingApiClient = client ?? GeocodingApiClient();

  factory GeocodingApi({GeocodingApiClient? client}) =>
      _instance ??= GeocodingApi._(client: client);

  Future<Tuple2<LocationList?, HttpError?>> getCityGeoData({
    required String city,
  }) async {
    final resp = await geocodingApiClient.dio.get(
      GeocodingRoutes.searchCity,
      queryParameters: ReqGetGeocodingLocation(
        name: city,
      ).queryParams,
    );
    return switch (resp.statusCode) {
      HttpStatus.ok => Tuple2(LocationList.fromJson(resp.data), null),
      _ => Tuple2(
          null,
          HttpError(resp.statusCode ?? 0, resp.statusMessage ?? ''),
        )
    };
  }
}
