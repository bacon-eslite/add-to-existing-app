// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_repo.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetForecastRepoCollection on Isar {
  IsarCollection<ForecastRepo> get forecastRepos => this.collection();
}

const ForecastRepoSchema = CollectionSchema(
  name: r'ForecastRepo',
  id: 3113056671836731209,
  properties: {
    r'elevation': PropertySchema(
      id: 0,
      name: r'elevation',
      type: IsarType.double,
    ),
    r'generationtime_ms': PropertySchema(
      id: 1,
      name: r'generationtime_ms',
      type: IsarType.double,
    ),
    r'is_day': PropertySchema(
      id: 2,
      name: r'is_day',
      type: IsarType.long,
    ),
    r'latitude': PropertySchema(
      id: 3,
      name: r'latitude',
      type: IsarType.double,
    ),
    r'longitude': PropertySchema(
      id: 4,
      name: r'longitude',
      type: IsarType.double,
    ),
    r'temperature': PropertySchema(
      id: 5,
      name: r'temperature',
      type: IsarType.double,
    ),
    r'time': PropertySchema(
      id: 6,
      name: r'time',
      type: IsarType.string,
    ),
    r'timezone': PropertySchema(
      id: 7,
      name: r'timezone',
      type: IsarType.string,
    ),
    r'timezone_abbreviation': PropertySchema(
      id: 8,
      name: r'timezone_abbreviation',
      type: IsarType.string,
    ),
    r'utc_offset_seconds': PropertySchema(
      id: 9,
      name: r'utc_offset_seconds',
      type: IsarType.long,
    ),
    r'weather_code': PropertySchema(
      id: 10,
      name: r'weather_code',
      type: IsarType.long,
    ),
    r'wind_direction': PropertySchema(
      id: 11,
      name: r'wind_direction',
      type: IsarType.long,
    ),
    r'wind_speed': PropertySchema(
      id: 12,
      name: r'wind_speed',
      type: IsarType.double,
    )
  },
  estimateSize: _forecastRepoEstimateSize,
  serialize: _forecastRepoSerialize,
  deserialize: _forecastRepoDeserialize,
  deserializeProp: _forecastRepoDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _forecastRepoGetId,
  getLinks: _forecastRepoGetLinks,
  attach: _forecastRepoAttach,
  version: '3.1.0+1',
);

int _forecastRepoEstimateSize(
  ForecastRepo object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.time;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.timezone;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.timezoneAbbreviation;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _forecastRepoSerialize(
  ForecastRepo object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.elevation);
  writer.writeDouble(offsets[1], object.generationTime);
  writer.writeLong(offsets[2], object.isDay);
  writer.writeDouble(offsets[3], object.latitude);
  writer.writeDouble(offsets[4], object.longitude);
  writer.writeDouble(offsets[5], object.temperature);
  writer.writeString(offsets[6], object.time);
  writer.writeString(offsets[7], object.timezone);
  writer.writeString(offsets[8], object.timezoneAbbreviation);
  writer.writeLong(offsets[9], object.utcOffsetSeconds);
  writer.writeLong(offsets[10], object.weatherCode);
  writer.writeLong(offsets[11], object.windDirection);
  writer.writeDouble(offsets[12], object.windSpeed);
}

ForecastRepo _forecastRepoDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ForecastRepo();
  object.elevation = reader.readDoubleOrNull(offsets[0]);
  object.generationTime = reader.readDoubleOrNull(offsets[1]);
  object.id = id;
  object.isDay = reader.readLongOrNull(offsets[2]);
  object.latitude = reader.readDoubleOrNull(offsets[3]);
  object.longitude = reader.readDoubleOrNull(offsets[4]);
  object.temperature = reader.readDoubleOrNull(offsets[5]);
  object.time = reader.readStringOrNull(offsets[6]);
  object.timezone = reader.readStringOrNull(offsets[7]);
  object.timezoneAbbreviation = reader.readStringOrNull(offsets[8]);
  object.utcOffsetSeconds = reader.readLongOrNull(offsets[9]);
  object.weatherCode = reader.readLongOrNull(offsets[10]);
  object.windDirection = reader.readLongOrNull(offsets[11]);
  object.windSpeed = reader.readDoubleOrNull(offsets[12]);
  return object;
}

P _forecastRepoDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDoubleOrNull(offset)) as P;
    case 1:
      return (reader.readDoubleOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readDoubleOrNull(offset)) as P;
    case 4:
      return (reader.readDoubleOrNull(offset)) as P;
    case 5:
      return (reader.readDoubleOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readLongOrNull(offset)) as P;
    case 10:
      return (reader.readLongOrNull(offset)) as P;
    case 11:
      return (reader.readLongOrNull(offset)) as P;
    case 12:
      return (reader.readDoubleOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _forecastRepoGetId(ForecastRepo object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _forecastRepoGetLinks(ForecastRepo object) {
  return [];
}

void _forecastRepoAttach(
    IsarCollection<dynamic> col, Id id, ForecastRepo object) {
  object.id = id;
}

extension ForecastRepoQueryWhereSort
    on QueryBuilder<ForecastRepo, ForecastRepo, QWhere> {
  QueryBuilder<ForecastRepo, ForecastRepo, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ForecastRepoQueryWhere
    on QueryBuilder<ForecastRepo, ForecastRepo, QWhereClause> {
  QueryBuilder<ForecastRepo, ForecastRepo, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterWhereClause> idGreaterThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ForecastRepoQueryFilter
    on QueryBuilder<ForecastRepo, ForecastRepo, QFilterCondition> {
  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      elevationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'elevation',
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      elevationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'elevation',
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      elevationEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'elevation',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      elevationGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'elevation',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      elevationLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'elevation',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      elevationBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'elevation',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      generationTimeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'generationtime_ms',
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      generationTimeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'generationtime_ms',
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      generationTimeEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'generationtime_ms',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      generationTimeGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'generationtime_ms',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      generationTimeLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'generationtime_ms',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      generationTimeBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'generationtime_ms',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      isDayIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'is_day',
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      isDayIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'is_day',
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition> isDayEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'is_day',
        value: value,
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      isDayGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'is_day',
        value: value,
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition> isDayLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'is_day',
        value: value,
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition> isDayBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'is_day',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      latitudeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'latitude',
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      latitudeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'latitude',
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      latitudeEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'latitude',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      latitudeGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'latitude',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      latitudeLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'latitude',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      latitudeBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'latitude',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      longitudeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'longitude',
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      longitudeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'longitude',
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      longitudeEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'longitude',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      longitudeGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'longitude',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      longitudeLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'longitude',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      longitudeBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'longitude',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      temperatureIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'temperature',
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      temperatureIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'temperature',
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      temperatureEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'temperature',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      temperatureGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'temperature',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      temperatureLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'temperature',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      temperatureBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'temperature',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition> timeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'time',
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      timeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'time',
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition> timeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'time',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      timeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'time',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition> timeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'time',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition> timeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'time',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      timeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'time',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition> timeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'time',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition> timeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'time',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition> timeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'time',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      timeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'time',
        value: '',
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      timeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'time',
        value: '',
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      timezoneIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'timezone',
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      timezoneIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'timezone',
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      timezoneEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timezone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      timezoneGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'timezone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      timezoneLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'timezone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      timezoneBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'timezone',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      timezoneStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'timezone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      timezoneEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'timezone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      timezoneContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'timezone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      timezoneMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'timezone',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      timezoneIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timezone',
        value: '',
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      timezoneIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'timezone',
        value: '',
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      timezoneAbbreviationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'timezone_abbreviation',
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      timezoneAbbreviationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'timezone_abbreviation',
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      timezoneAbbreviationEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timezone_abbreviation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      timezoneAbbreviationGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'timezone_abbreviation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      timezoneAbbreviationLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'timezone_abbreviation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      timezoneAbbreviationBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'timezone_abbreviation',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      timezoneAbbreviationStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'timezone_abbreviation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      timezoneAbbreviationEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'timezone_abbreviation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      timezoneAbbreviationContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'timezone_abbreviation',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      timezoneAbbreviationMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'timezone_abbreviation',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      timezoneAbbreviationIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timezone_abbreviation',
        value: '',
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      timezoneAbbreviationIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'timezone_abbreviation',
        value: '',
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      utcOffsetSecondsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'utc_offset_seconds',
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      utcOffsetSecondsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'utc_offset_seconds',
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      utcOffsetSecondsEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'utc_offset_seconds',
        value: value,
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      utcOffsetSecondsGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'utc_offset_seconds',
        value: value,
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      utcOffsetSecondsLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'utc_offset_seconds',
        value: value,
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      utcOffsetSecondsBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'utc_offset_seconds',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      weatherCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'weather_code',
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      weatherCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'weather_code',
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      weatherCodeEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weather_code',
        value: value,
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      weatherCodeGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'weather_code',
        value: value,
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      weatherCodeLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'weather_code',
        value: value,
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      weatherCodeBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'weather_code',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      windDirectionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'wind_direction',
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      windDirectionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'wind_direction',
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      windDirectionEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'wind_direction',
        value: value,
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      windDirectionGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'wind_direction',
        value: value,
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      windDirectionLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'wind_direction',
        value: value,
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      windDirectionBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'wind_direction',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      windSpeedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'wind_speed',
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      windSpeedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'wind_speed',
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      windSpeedEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'wind_speed',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      windSpeedGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'wind_speed',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      windSpeedLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'wind_speed',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterFilterCondition>
      windSpeedBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'wind_speed',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension ForecastRepoQueryObject
    on QueryBuilder<ForecastRepo, ForecastRepo, QFilterCondition> {}

extension ForecastRepoQueryLinks
    on QueryBuilder<ForecastRepo, ForecastRepo, QFilterCondition> {}

extension ForecastRepoQuerySortBy
    on QueryBuilder<ForecastRepo, ForecastRepo, QSortBy> {
  QueryBuilder<ForecastRepo, ForecastRepo, QAfterSortBy> sortByElevation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'elevation', Sort.asc);
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterSortBy> sortByElevationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'elevation', Sort.desc);
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterSortBy>
      sortByGenerationTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'generationtime_ms', Sort.asc);
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterSortBy>
      sortByGenerationTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'generationtime_ms', Sort.desc);
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterSortBy> sortByIsDay() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'is_day', Sort.asc);
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterSortBy> sortByIsDayDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'is_day', Sort.desc);
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterSortBy> sortByLatitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latitude', Sort.asc);
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterSortBy> sortByLatitudeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latitude', Sort.desc);
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterSortBy> sortByLongitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'longitude', Sort.asc);
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterSortBy> sortByLongitudeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'longitude', Sort.desc);
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterSortBy> sortByTemperature() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'temperature', Sort.asc);
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterSortBy>
      sortByTemperatureDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'temperature', Sort.desc);
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterSortBy> sortByTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'time', Sort.asc);
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterSortBy> sortByTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'time', Sort.desc);
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterSortBy> sortByTimezone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timezone', Sort.asc);
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterSortBy> sortByTimezoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timezone', Sort.desc);
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterSortBy>
      sortByTimezoneAbbreviation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timezone_abbreviation', Sort.asc);
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterSortBy>
      sortByTimezoneAbbreviationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timezone_abbreviation', Sort.desc);
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterSortBy>
      sortByUtcOffsetSeconds() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'utc_offset_seconds', Sort.asc);
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterSortBy>
      sortByUtcOffsetSecondsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'utc_offset_seconds', Sort.desc);
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterSortBy> sortByWeatherCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weather_code', Sort.asc);
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterSortBy>
      sortByWeatherCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weather_code', Sort.desc);
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterSortBy> sortByWindDirection() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'wind_direction', Sort.asc);
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterSortBy>
      sortByWindDirectionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'wind_direction', Sort.desc);
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterSortBy> sortByWindSpeed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'wind_speed', Sort.asc);
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterSortBy> sortByWindSpeedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'wind_speed', Sort.desc);
    });
  }
}

extension ForecastRepoQuerySortThenBy
    on QueryBuilder<ForecastRepo, ForecastRepo, QSortThenBy> {
  QueryBuilder<ForecastRepo, ForecastRepo, QAfterSortBy> thenByElevation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'elevation', Sort.asc);
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterSortBy> thenByElevationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'elevation', Sort.desc);
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterSortBy>
      thenByGenerationTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'generationtime_ms', Sort.asc);
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterSortBy>
      thenByGenerationTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'generationtime_ms', Sort.desc);
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterSortBy> thenByIsDay() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'is_day', Sort.asc);
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterSortBy> thenByIsDayDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'is_day', Sort.desc);
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterSortBy> thenByLatitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latitude', Sort.asc);
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterSortBy> thenByLatitudeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latitude', Sort.desc);
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterSortBy> thenByLongitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'longitude', Sort.asc);
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterSortBy> thenByLongitudeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'longitude', Sort.desc);
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterSortBy> thenByTemperature() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'temperature', Sort.asc);
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterSortBy>
      thenByTemperatureDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'temperature', Sort.desc);
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterSortBy> thenByTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'time', Sort.asc);
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterSortBy> thenByTimeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'time', Sort.desc);
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterSortBy> thenByTimezone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timezone', Sort.asc);
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterSortBy> thenByTimezoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timezone', Sort.desc);
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterSortBy>
      thenByTimezoneAbbreviation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timezone_abbreviation', Sort.asc);
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterSortBy>
      thenByTimezoneAbbreviationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timezone_abbreviation', Sort.desc);
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterSortBy>
      thenByUtcOffsetSeconds() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'utc_offset_seconds', Sort.asc);
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterSortBy>
      thenByUtcOffsetSecondsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'utc_offset_seconds', Sort.desc);
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterSortBy> thenByWeatherCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weather_code', Sort.asc);
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterSortBy>
      thenByWeatherCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weather_code', Sort.desc);
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterSortBy> thenByWindDirection() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'wind_direction', Sort.asc);
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterSortBy>
      thenByWindDirectionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'wind_direction', Sort.desc);
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterSortBy> thenByWindSpeed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'wind_speed', Sort.asc);
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QAfterSortBy> thenByWindSpeedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'wind_speed', Sort.desc);
    });
  }
}

extension ForecastRepoQueryWhereDistinct
    on QueryBuilder<ForecastRepo, ForecastRepo, QDistinct> {
  QueryBuilder<ForecastRepo, ForecastRepo, QDistinct> distinctByElevation() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'elevation');
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QDistinct>
      distinctByGenerationTime() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'generationtime_ms');
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QDistinct> distinctByIsDay() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'is_day');
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QDistinct> distinctByLatitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'latitude');
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QDistinct> distinctByLongitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'longitude');
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QDistinct> distinctByTemperature() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'temperature');
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QDistinct> distinctByTime(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'time', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QDistinct> distinctByTimezone(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'timezone', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QDistinct>
      distinctByTimezoneAbbreviation({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'timezone_abbreviation',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QDistinct>
      distinctByUtcOffsetSeconds() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'utc_offset_seconds');
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QDistinct> distinctByWeatherCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'weather_code');
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QDistinct>
      distinctByWindDirection() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'wind_direction');
    });
  }

  QueryBuilder<ForecastRepo, ForecastRepo, QDistinct> distinctByWindSpeed() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'wind_speed');
    });
  }
}

extension ForecastRepoQueryProperty
    on QueryBuilder<ForecastRepo, ForecastRepo, QQueryProperty> {
  QueryBuilder<ForecastRepo, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<ForecastRepo, double?, QQueryOperations> elevationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'elevation');
    });
  }

  QueryBuilder<ForecastRepo, double?, QQueryOperations>
      generationTimeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'generationtime_ms');
    });
  }

  QueryBuilder<ForecastRepo, int?, QQueryOperations> isDayProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'is_day');
    });
  }

  QueryBuilder<ForecastRepo, double?, QQueryOperations> latitudeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'latitude');
    });
  }

  QueryBuilder<ForecastRepo, double?, QQueryOperations> longitudeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'longitude');
    });
  }

  QueryBuilder<ForecastRepo, double?, QQueryOperations> temperatureProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'temperature');
    });
  }

  QueryBuilder<ForecastRepo, String?, QQueryOperations> timeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'time');
    });
  }

  QueryBuilder<ForecastRepo, String?, QQueryOperations> timezoneProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'timezone');
    });
  }

  QueryBuilder<ForecastRepo, String?, QQueryOperations>
      timezoneAbbreviationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'timezone_abbreviation');
    });
  }

  QueryBuilder<ForecastRepo, int?, QQueryOperations>
      utcOffsetSecondsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'utc_offset_seconds');
    });
  }

  QueryBuilder<ForecastRepo, int?, QQueryOperations> weatherCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'weather_code');
    });
  }

  QueryBuilder<ForecastRepo, int?, QQueryOperations> windDirectionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'wind_direction');
    });
  }

  QueryBuilder<ForecastRepo, double?, QQueryOperations> windSpeedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'wind_speed');
    });
  }
}
