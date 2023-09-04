import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'rsp_get_geocoding_location.g.dart';

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class LocationList {
  List<Location>? results;
  @JsonKey(name: 'generationtime_ms')
  double? generationTimeMs;

  LocationList({this.results, this.generationTimeMs});

  factory LocationList.fromJson(Map<String, dynamic> json) =>
      _$LocationListFromJson(json);

  Map<String, dynamic> toJson() => _$LocationListToJson(this);
}

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class Location extends Equatable {
  final int? id;
  final String? name;
  final double? latitude;
  final double? longitude;
  final int? elevation;
  final String? featureCode;
  final String? countryCode;
  final int? admin1Id;
  final int? admin2Id;
  final String? timezone;
  final int? population;
  final int? countryId;
  final String? country;
  final String? admin1;
  final String? admin2;
  final int? admin3Id;
  final int? admin4Id;
  final String? admin3;
  final String? admin4;

  const Location(
      {this.id,
      this.name,
      this.latitude,
      this.longitude,
      this.elevation,
      this.featureCode,
      this.countryCode,
      this.admin1Id,
      this.admin2Id,
      this.timezone,
      this.population,
      this.countryId,
      this.country,
      this.admin1,
      this.admin2,
      this.admin3Id,
      this.admin4Id,
      this.admin3,
      this.admin4});

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  Map<String, dynamic> toJson() => _$LocationToJson(this);

  @override
  List<Object?> get props => [
        id,
        name,
        latitude,
        longitude,
        countryCode,
        timezone,
      ];
}
