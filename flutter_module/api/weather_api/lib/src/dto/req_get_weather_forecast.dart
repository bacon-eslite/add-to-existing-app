class ReqGetWeatherForecast {
  final double latitude;
  final double longitude;
  final String? timezone;

//   to query params, ignore null value, as map
  Map<String, dynamic> get queryParams => {
        'latitude': latitude,
        'longitude': longitude,
        'current_weather': true,
        if (timezone != null) 'timezone': timezone,
      };

  ReqGetWeatherForecast({
    required this.latitude,
    required this.longitude,
    this.timezone,
  });
}
