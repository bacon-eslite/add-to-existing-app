class ReqGetWeatherForecast {
  final double latitude;
  final double longitude;
  final bool? currentWeather;
  final String? timezone;

//   to query params, ignore null value, as map
  Map<String, dynamic> get queryParams => {
        'latitude': latitude,
        'longitude': longitude,
        if (currentWeather != null) 'current_weather': currentWeather,
        if (timezone != null) 'timezone': timezone,
      };

  ReqGetWeatherForecast({
    required this.latitude,
    required this.longitude,
    this.currentWeather,
    this.timezone,
  });
}
