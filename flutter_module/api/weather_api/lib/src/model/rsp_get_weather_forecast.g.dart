// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rsp_get_weather_forecast.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherForecast _$WeatherForecastFromJson(Map<String, dynamic> json) =>
    WeatherForecast(
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      generationTime: (json['generationtime_ms'] as num?)?.toDouble(),
      utcOffsetSeconds: json['utc_offset_seconds'] as int?,
      timezone: json['timezone'] as String?,
      timezoneAbbreviation: json['timezone_abbreviation'] as String?,
      elevation: json['elevation'] as int?,
    );

Map<String, dynamic> _$WeatherForecastToJson(WeatherForecast instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'generationtime_ms': instance.generationTime,
      'utc_offset_seconds': instance.utcOffsetSeconds,
      'timezone': instance.timezone,
      'timezone_abbreviation': instance.timezoneAbbreviation,
      'elevation': instance.elevation,
    };
