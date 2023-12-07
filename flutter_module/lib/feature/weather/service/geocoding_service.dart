import 'package:weather_api/weather_api.dart' as api;

import '../../../common/util/logger.dart';
import '../model/model.dart';

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
    final (resp, err) = await _geocodingApi.getCityGeoData(
      city: city,
    );
    if (err != null) {
      Logger.e(err.message);
      return null;
    }
    return resp?.results?.map((e) => Location.fromDto(e)).toList();
  }
}
