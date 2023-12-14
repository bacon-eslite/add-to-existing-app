import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'rsp_get_city.g.dart';

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class RspGetCityList {
  List<RspGetCity>? results;
  @JsonKey(name: 'generationtime_ms')
  double? generationTimeMs;

  RspGetCityList({this.results, this.generationTimeMs});

  factory RspGetCityList.fromJson(Map<String, dynamic> json) =>
      _$LocationListFromJson(json);

  Map<String, dynamic> toJson() => _$LocationListToJson(this);
}

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class RspGetCity extends Equatable {
  final int? id;
  final String? name;
  final double? latitude;
  final double? longitude;
  final double? elevation;
  final String? featureCode;
  final String? countryCode;
  final String? timezone;
  final int? population;
  final int? countryId;
  final String? country;
  final int? admin1Id;
  final int? admin2Id;
  final String? admin1;
  final String? admin2;
  final int? admin3Id;
  final int? admin4Id;
  final String? admin3;
  final String? admin4;

  const RspGetCity({
    this.id,
    this.name,
    this.latitude,
    this.longitude,
    this.elevation,
    this.featureCode,
    this.countryCode,
    this.timezone,
    this.population,
    this.countryId,
    this.country,
    this.admin1Id,
    this.admin2Id,
    this.admin1,
    this.admin2,
    this.admin3Id,
    this.admin4Id,
    this.admin3,
    this.admin4,
  });

  factory RspGetCity.fromJson(Map<String, dynamic> json) =>
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
