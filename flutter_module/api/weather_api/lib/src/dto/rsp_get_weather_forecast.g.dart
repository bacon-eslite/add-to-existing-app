// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rsp_get_weather_forecast.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RspGetForecast _$WeatherFromJson(Map<String, dynamic> json) => RspGetForecast(
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      generationTime: (json['generationtime_ms'] as num?)?.toDouble(),
      utcOffsetSeconds: json['utc_offset_seconds'] as int?,
      timezone: json['timezone'] as String?,
      timezoneAbbreviation: json['timezone_abbreviation'] as String?,
      elevation: json['elevation'] as double?,
      currentWeather: json['current_weather'] == null
          ? null
          : RspWeather.fromJson(
              json['current_weather'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WeatherToJson(RspGetForecast instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'generationtime_ms': instance.generationTime,
      'utc_offset_seconds': instance.utcOffsetSeconds,
      'timezone': instance.timezone,
      'timezone_abbreviation': instance.timezoneAbbreviation,
      'elevation': instance.elevation,
      'current_weather': instance.currentWeather?.toJson(),
    };

RspWeather _$CurrentWeatherFromJson(Map<String, dynamic> json) => RspWeather(
      temperature: (json['temperature'] as num?)?.toDouble(),
      windSpeed: (json['windspeed'] as num?)?.toDouble(),
      windDirection: json['winddirection'] as int?,
      weatherCode: json['weathercode'] as int?,
      isDay: json['is_day'] as int?,
      time: json['time'] as String?,
    );

Map<String, dynamic> _$CurrentWeatherToJson(RspWeather instance) =>
    <String, dynamic>{
      'temperature': instance.temperature,
      'windspeed': instance.windSpeed,
      'winddirection': instance.windDirection,
      'weathercode': instance.weatherCode,
      'is_day': instance.isDay,
      'time': instance.time,
    };
