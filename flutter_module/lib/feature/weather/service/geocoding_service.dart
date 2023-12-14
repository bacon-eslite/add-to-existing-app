import 'package:weather_api/weather_api.dart' as api;

import '../../../common/extension/extension.dart';

class GeocodingService {
  final api.GeocodingApi _geocodingApi;

  static GeocodingService? _instance;

  GeocodingService._({api.GeocodingApi? geocodingApi})
      : _geocodingApi = geocodingApi ?? api.GeocodingApi();

  factory GeocodingService({api.GeocodingApi? geocodingApi}) =>
      _instance ??= GeocodingService._(geocodingApi: geocodingApi);

  Future<(List<api.RspGetCity>, HttpError?)> queryCities({
    required String city,
  }) async {
    final (resp, err) = await _geocodingApi.getCityGeoData(
      city: city,
    );

    if (err != null) {
      return (List<api.RspGetCity>.empty(), HttpError(message: err.message));
    }
    return (resp?.results ?? [], null);
  }
}
