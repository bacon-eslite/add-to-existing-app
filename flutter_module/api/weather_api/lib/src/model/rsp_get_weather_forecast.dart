import 'package:json_annotation/json_annotation.dart';

part 'rsp_get_weather_forecast.g.dart';

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class Weather {
  double? latitude;
  double? longitude;
  @JsonKey(name: 'generationtime_ms')
  double? generationTime;
  int? utcOffsetSeconds;
  String? timezone;
  String? timezoneAbbreviation;
  double? elevation;
  CurrentWeather? currentWeather;

  Weather(
      {this.latitude,
      this.longitude,
      this.generationTime,
      this.utcOffsetSeconds,
      this.timezone,
      this.timezoneAbbreviation,
      this.elevation,
      this.currentWeather});

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherToJson(this);
}

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class CurrentWeather {
  double? temperature;
  @JsonKey(name: 'windspeed')
  double? windSpeed;
  @JsonKey(name: 'winddirection')
  int? windDirection;
  @JsonKey(name: 'weathercode')
  int? weatherCode;
  int? isDay;
  String? time;

  CurrentWeather(
      {this.temperature,
      this.windSpeed,
      this.windDirection,
      this.weatherCode,
      this.isDay,
      this.time});

  factory CurrentWeather.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentWeatherToJson(this);
}
