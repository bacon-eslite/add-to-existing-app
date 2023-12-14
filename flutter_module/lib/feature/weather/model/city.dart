import 'package:equatable/equatable.dart';
import 'package:weather_api/weather_api.dart' as api;

import '../repository/repository.dart';

class City extends Equatable {
  final int? id;
  final String? name;
  final double? latitude;
  final double? longitude;
  final String? countryCode;
  final String? timezone;
  final String? country;
  final String? city;
  final String? town;

  const City({
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
  factory City.fromDto(api.RspGetCity dto) {
    return City(
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

  factory City.fromRepo(CityRepo repo) {
    return City(
      id: repo.id,
      name: repo.name,
      latitude: repo.latitude,
      longitude: repo.longitude,
      countryCode: repo.countryCode,
      timezone: repo.timezone,
      country: repo.country,
      city: repo.admin2,
      town: repo.admin3,
    );
  }

//   toJson
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'latitude': latitude,
      'longitude': longitude,
      'countryCode': countryCode,
      'timezone': timezone,
      'country': country,
      'city': city,
      'town': town,
    };
  }
}
