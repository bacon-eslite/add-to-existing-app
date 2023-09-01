import 'package:weather_api/src/api_client.dart';
import 'package:weather_api/src/config/config.dart';
import 'package:weather_api/src/model/req_get_geocoding_location.dart';

class GeocodingApi {
  static GeocodingApi? _instance;

  final GeocodingApiClient geocodingApiClient;

  GeocodingApi._({
    GeocodingApiClient? client,
  }) : geocodingApiClient = client ?? GeocodingApiClient();

  factory GeocodingApi({GeocodingApiClient? client}) =>
      _instance ??= GeocodingApi._(client: client);

  Future<dynamic> getCityGeoData({
    required String city,
  }) async {
    final response = await geocodingApiClient.dio.get(
      GeocodingRoutes.searchCity,
      queryParameters: ReqGetGeocodingLocation(
        name: city,
      ).queryParams,
    );
    return response.data;
  }
}
