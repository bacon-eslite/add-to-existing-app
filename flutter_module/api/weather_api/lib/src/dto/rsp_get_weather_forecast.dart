import 'package:json_annotation/json_annotation.dart';

part 'rsp_get_weather_forecast.g.dart';

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class RspGetForecast {
  double? latitude;
  double? longitude;
  @JsonKey(name: 'generationtime_ms')
  double? generationTime;
  int? utcOffsetSeconds;
  String? timezone;
  String? timezoneAbbreviation;
  double? elevation;
  RspWeather? currentWeather;

  RspGetForecast(
      {this.latitude,
      this.longitude,
      this.generationTime,
      this.utcOffsetSeconds,
      this.timezone,
      this.timezoneAbbreviation,
      this.elevation,
      this.currentWeather});

  factory RspGetForecast.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherToJson(this);
}

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class RspWeather {
  double? temperature;
  @JsonKey(name: 'windspeed')
  double? windSpeed;
  @JsonKey(name: 'winddirection')
  int? windDirection;
  @JsonKey(name: 'weathercode')
  int? weatherCode;
  int? isDay;
  String? time;

  RspWeather(
      {this.temperature,
      this.windSpeed,
      this.windDirection,
      this.weatherCode,
      this.isDay,
      this.time});

  factory RspWeather.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentWeatherToJson(this);
}
