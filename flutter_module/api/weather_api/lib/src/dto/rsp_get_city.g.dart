// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rsp_get_city.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RspGetCityList _$LocationListFromJson(Map<String, dynamic> json) =>
    RspGetCityList(
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => RspGetCity.fromJson(e as Map<String, dynamic>))
          .toList(),
      generationTimeMs: (json['generationtime_ms'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$LocationListToJson(RspGetCityList instance) =>
    <String, dynamic>{
      'results': instance.results?.map((e) => e.toJson()).toList(),
      'generationtime_ms': instance.generationTimeMs,
    };

RspGetCity _$LocationFromJson(Map<String, dynamic> json) => RspGetCity(
      id: json['id'] as int?,
      name: json['name'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      elevation: json['elevation'] as double?,
      featureCode: json['feature_code'] as String?,
      countryCode: json['country_code'] as String?,
      admin1Id: json['admin1_id'] as int?,
      admin2Id: json['admin2_id'] as int?,
      timezone: json['timezone'] as String?,
      population: json['population'] as int?,
      countryId: json['country_id'] as int?,
      country: json['country'] as String?,
      admin1: json['admin1'] as String?,
      admin2: json['admin2'] as String?,
      admin3Id: json['admin3_id'] as int?,
      admin4Id: json['admin4_id'] as int?,
      admin3: json['admin3'] as String?,
      admin4: json['admin4'] as String?,
    );

Map<String, dynamic> _$LocationToJson(RspGetCity instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'elevation': instance.elevation,
      'feature_code': instance.featureCode,
      'country_code': instance.countryCode,
      'admin1_id': instance.admin1Id,
      'admin2_id': instance.admin2Id,
      'timezone': instance.timezone,
      'population': instance.population,
      'country_id': instance.countryId,
      'country': instance.country,
      'admin1': instance.admin1,
      'admin2': instance.admin2,
      'admin3_id': instance.admin3Id,
      'admin4_id': instance.admin4Id,
      'admin3': instance.admin3,
      'admin4': instance.admin4,
    };
