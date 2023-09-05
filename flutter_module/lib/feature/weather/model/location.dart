import 'package:equatable/equatable.dart';
import 'package:weather_api/weather_api.dart' as api;

class Location extends Equatable {
  final int? id;
  final String? name;
  final double? latitude;
  final double? longitude;
  final String? countryCode;
  final String? timezone;
  final String? country;
  final String? city;
  final String? town;

  const Location({
    this.id,
    this.name,
    this.latitude,
    this.longitude,
    this.countryCode,
    this.timezone,
    this.country,
    this.city,
    this.town,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        latitude,
        longitude,
        countryCode,
        timezone,
      ];

//   from dto
  factory Location.fromDto(api.Location dto) {
    return Location(
      id: dto.id,
      name: dto.name,
      latitude: dto.latitude,
      longitude: dto.longitude,
      countryCode: dto.countryCode,
      timezone: dto.timezone,
      country: dto.country,
      city: dto.admin2,
      town: dto.admin3,
    );
  }
}
