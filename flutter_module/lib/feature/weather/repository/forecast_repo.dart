import 'package:isar/isar.dart';

part 'forecast_repo.g.dart';

@collection
class ForecastRepo {
  Id id = Isar.autoIncrement;
  double? latitude;
  double? longitude;
  @Name('generationtime_ms')
  double? generationTime;
  @Name('utc_offset_seconds')
  int? utcOffsetSeconds;
  String? timezone;
  @Name('timezone_abbreviation')
  String? timezoneAbbreviation;
  double? elevation;
  double? temperature;
  @Name('wind_speed')
  double? windSpeed;
  @Name('wind_direction')
  int? windDirection;
  @Name('weather_code')
  int? weatherCode;
  @Name('is_day')
  int? isDay;
  String? time;
}
