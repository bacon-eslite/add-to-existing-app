import 'package:flutter_module/common/util/logger.dart';
import 'package:flutter_module/feature/weather/model/model.dart';
import 'package:weather_api/weather_api.dart' as api;

class GeocodingService {
  final api.GeocodingApi _geocodingApi;

  static GeocodingService? _instance;

  GeocodingService._({api.GeocodingApi? geocodingApi})
      : _geocodingApi = geocodingApi ?? api.GeocodingApi();

  factory GeocodingService({api.GeocodingApi? geocodingApi}) =>
      _instance ??= GeocodingService._(geocodingApi: geocodingApi);

  Future<List<Location>?> getLocations({
    required String city,
  }) async {
    final resp = await _geocodingApi.getCityGeoData(
      city: city,
    );
    final error = resp.item2;
    if (error != null) {
      Logger.e(error.message);
      return null;
    }
    return resp.item1?.results?.map((e) => Location.fromDto(e)).toList();
  }
}
