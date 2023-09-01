import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'rsp_get_weather_forecast.g.dart';

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class WeatherForecast extends Equatable {
  final double? latitude;
  final double? longitude;
  @JsonKey(name: 'generationtime_ms')
  final double? generationTime;
  final int? utcOffsetSeconds;
  final String? timezone;
  final String? timezoneAbbreviation;
  final int? elevation;

  const WeatherForecast({
    this.latitude,
    this.longitude,
    this.generationTime,
    this.utcOffsetSeconds,
    this.timezone,
    this.timezoneAbbreviation,
    this.elevation,
  });

  factory WeatherForecast.fromJson(Map<String, dynamic> json) =>
      _$WeatherForecastFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherForecastToJson(this);

  @override
  List<Object?> get props => [
        latitude,
        longitude,
        generationTime,
        utcOffsetSeconds,
        timezone,
        timezoneAbbreviation,
        elevation,
      ];
}
