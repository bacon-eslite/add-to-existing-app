import 'package:equatable/equatable.dart';
import 'package:weather_api/weather_api.dart' as api;

class Forecast extends Equatable {
  final double? temperature;
  final double? windSpeed;
  final int? windDirection;
  final int? weatherCode;
  final int? isDay;
  final String? time;

  const Forecast({
    this.temperature,
    this.windSpeed,
    this.windDirection,
    this.weatherCode,
    this.isDay,
    this.time,
  });

  factory Forecast.fromDto(api.RspGetForecast dto) {
    return Forecast(
      temperature: dto.currentWeather?.temperature,
      windSpeed: dto.currentWeather?.windSpeed,
      windDirection: dto.currentWeather?.windDirection,
      weatherCode: dto.currentWeather?.weatherCode,
      isDay: dto.currentWeather?.isDay,
      time: dto.currentWeather?.time,
    );
  }

  api.RspGetForecast toDto() {
    return api.RspGetForecast(
      currentWeather: api.RspWeather(
        temperature: temperature,
        windSpeed: windSpeed,
        windDirection: windDirection,
        weatherCode: weatherCode,
        isDay: isDay,
        time: time,
      ),
    );
  }

  @override
  List<Object?> get props => [
        temperature,
        windSpeed,
        windDirection,
        weatherCode,
        isDay,
        time,
      ];
}
