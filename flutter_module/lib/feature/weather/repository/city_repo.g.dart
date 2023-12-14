// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_repo.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCityRepoCollection on Isar {
  IsarCollection<CityRepo> get cityRepos => this.collection();
}

const CityRepoSchema = CollectionSchema(
  name: r'CityRepo',
  id: -2497869669697340541,
  properties: {
    r'admin1': PropertySchema(
      id: 0,
      name: r'admin1',
      type: IsarType.string,
    ),
    r'admin1Id': PropertySchema(
      id: 1,
      name: r'admin1Id',
      type: IsarType.long,
    ),
    r'admin2': PropertySchema(
      id: 2,
      name: r'admin2',
      type: IsarType.string,
    ),
    r'admin2Id': PropertySchema(
      id: 3,
      name: r'admin2Id',
      type: IsarType.long,
    ),
    r'admin3': PropertySchema(
      id: 4,
      name: r'admin3',
      type: IsarType.string,
    ),
    r'admin3Id': PropertySchema(
      id: 5,
      name: r'admin3Id',
      type: IsarType.long,
    ),
    r'admin4': PropertySchema(
      id: 6,
      name: r'admin4',
      type: IsarType.string,
    ),
    r'admin4Id': PropertySchema(
      id: 7,
      name: r'admin4Id',
      type: IsarType.long,
    ),
    r'country': PropertySchema(
      id: 8,
      name: r'country',
      type: IsarType.string,
    ),
    r'country_code': PropertySchema(
      id: 9,
      name: r'country_code',
      type: IsarType.string,
    ),
    r'country_id': PropertySchema(
      id: 10,
      name: r'country_id',
      type: IsarType.long,
    ),
    r'created_at': PropertySchema(
      id: 11,
      name: r'created_at',
      type: IsarType.dateTime,
    ),
    r'elevation': PropertySchema(
      id: 12,
      name: r'elevation',
      type: IsarType.double,
    ),
    r'feature_code': PropertySchema(
      id: 13,
      name: r'feature_code',
      type: IsarType.string,
    ),
    r'latitude': PropertySchema(
      id: 14,
      name: r'latitude',
      type: IsarType.double,
    ),
    r'longitude': PropertySchema(
      id: 15,
      name: r'longitude',
      type: IsarType.double,
    ),
    r'name': PropertySchema(
      id: 16,
      name: r'name',
      type: IsarType.string,
    ),
    r'population': PropertySchema(
      id: 17,
      name: r'population',
      type: IsarType.long,
    ),
    r'timezone': PropertySchema(
      id: 18,
      name: r'timezone',
      type: IsarType.string,
    )
  },
  estimateSize: _cityRepoEstimateSize,
  serialize: _cityRepoSerialize,
  deserialize: _cityRepoDeserialize,
  deserializeProp: _cityRepoDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _cityRepoGetId,
  getLinks: _cityRepoGetLinks,
  attach: _cityRepoAttach,
  version: '3.1.0+1',
);

int _cityRepoEstimateSize(
  CityRepo object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.admin1;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.admin2;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.admin3;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.admin4;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.country;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.countryCode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.featureCode;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.name;
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
  return bytesCount;
}

void _cityRepoSerialize(
  CityRepo object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.admin1);
  writer.writeLong(offsets[1], object.admin1Id);
  writer.writeString(offsets[2], object.admin2);
  writer.writeLong(offsets[3], object.admin2Id);
  writer.writeString(offsets[4], object.admin3);
  writer.writeLong(offsets[5], object.admin3Id);
  writer.writeString(offsets[6], object.admin4);
  writer.writeLong(offsets[7], object.admin4Id);
  writer.writeString(offsets[8], object.country);
  writer.writeString(offsets[9], object.countryCode);
  writer.writeLong(offsets[10], object.countryId);
  writer.writeDateTime(offsets[11], object.createdAt);
  writer.writeDouble(offsets[12], object.elevation);
  writer.writeString(offsets[13], object.featureCode);
  writer.writeDouble(offsets[14], object.latitude);
  writer.writeDouble(offsets[15], object.longitude);
  writer.writeString(offsets[16], object.name);
  writer.writeLong(offsets[17], object.population);
  writer.writeString(offsets[18], object.timezone);
}

CityRepo _cityRepoDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CityRepo(
    admin1: reader.readStringOrNull(offsets[0]),
    admin1Id: reader.readLongOrNull(offsets[1]),
    admin2: reader.readStringOrNull(offsets[2]),
    admin2Id: reader.readLongOrNull(offsets[3]),
    admin3: reader.readStringOrNull(offsets[4]),
    admin3Id: reader.readLongOrNull(offsets[5]),
    admin4: reader.readStringOrNull(offsets[6]),
    admin4Id: reader.readLongOrNull(offsets[7]),
    country: reader.readStringOrNull(offsets[8]),
    countryCode: reader.readStringOrNull(offsets[9]),
    countryId: reader.readLongOrNull(offsets[10]),
    elevation: reader.readDoubleOrNull(offsets[12]),
    featureCode: reader.readStringOrNull(offsets[13]),
    latitude: reader.readDoubleOrNull(offsets[14]),
    longitude: reader.readDoubleOrNull(offsets[15]),
    name: reader.readStringOrNull(offsets[16]),
    population: reader.readLongOrNull(offsets[17]),
    timezone: reader.readStringOrNull(offsets[18]),
  );
  object.createdAt = reader.readDateTime(offsets[11]);
  object.id = id;
  return object;
}

P _cityRepoDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readLongOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readLongOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (reader.readStringOrNull(offset)) as P;
    case 10:
      return (reader.readLongOrNull(offset)) as P;
    case 11:
      return (reader.readDateTime(offset)) as P;
    case 12:
      return (reader.readDoubleOrNull(offset)) as P;
    case 13:
      return (reader.readStringOrNull(offset)) as P;
    case 14:
      return (reader.readDoubleOrNull(offset)) as P;
    case 15:
      return (reader.readDoubleOrNull(offset)) as P;
    case 16:
      return (reader.readStringOrNull(offset)) as P;
    case 17:
      return (reader.readLongOrNull(offset)) as P;
    case 18:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _cityRepoGetId(CityRepo object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _cityRepoGetLinks(CityRepo object) {
  return [];
}

void _cityRepoAttach(IsarCollection<dynamic> col, Id id, CityRepo object) {
  object.id = id;
}

extension CityRepoQueryWhereSort on QueryBuilder<CityRepo, CityRepo, QWhere> {
  QueryBuilder<CityRepo, CityRepo, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CityRepoQueryWhere on QueryBuilder<CityRepo, CityRepo, QWhereClause> {
  QueryBuilder<CityRepo, CityRepo, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<CityRepo, CityRepo, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterWhereClause> idBetween(
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

extension CityRepoQueryFilter
    on QueryBuilder<CityRepo, CityRepo, QFilterCondition> {
  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin1IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'admin1',
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin1IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'admin1',
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin1EqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'admin1',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin1GreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'admin1',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin1LessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'admin1',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin1Between(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'admin1',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin1StartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'admin1',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin1EndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'admin1',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin1Contains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'admin1',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin1Matches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'admin1',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin1IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'admin1',
        value: '',
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin1IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'admin1',
        value: '',
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin1IdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'admin1Id',
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin1IdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'admin1Id',
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin1IdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'admin1Id',
        value: value,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin1IdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'admin1Id',
        value: value,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin1IdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'admin1Id',
        value: value,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin1IdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'admin1Id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin2IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'admin2',
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin2IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'admin2',
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin2EqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'admin2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin2GreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'admin2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin2LessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'admin2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin2Between(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'admin2',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin2StartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'admin2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin2EndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'admin2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin2Contains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'admin2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin2Matches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'admin2',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin2IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'admin2',
        value: '',
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin2IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'admin2',
        value: '',
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin2IdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'admin2Id',
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin2IdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'admin2Id',
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin2IdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'admin2Id',
        value: value,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin2IdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'admin2Id',
        value: value,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin2IdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'admin2Id',
        value: value,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin2IdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'admin2Id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin3IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'admin3',
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin3IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'admin3',
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin3EqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'admin3',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin3GreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'admin3',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin3LessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'admin3',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin3Between(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'admin3',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin3StartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'admin3',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin3EndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'admin3',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin3Contains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'admin3',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin3Matches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'admin3',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin3IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'admin3',
        value: '',
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin3IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'admin3',
        value: '',
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin3IdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'admin3Id',
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin3IdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'admin3Id',
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin3IdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'admin3Id',
        value: value,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin3IdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'admin3Id',
        value: value,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin3IdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'admin3Id',
        value: value,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin3IdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'admin3Id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin4IsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'admin4',
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin4IsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'admin4',
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin4EqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'admin4',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin4GreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'admin4',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin4LessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'admin4',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin4Between(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'admin4',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin4StartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'admin4',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin4EndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'admin4',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin4Contains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'admin4',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin4Matches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'admin4',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin4IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'admin4',
        value: '',
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin4IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'admin4',
        value: '',
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin4IdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'admin4Id',
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin4IdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'admin4Id',
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin4IdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'admin4Id',
        value: value,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin4IdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'admin4Id',
        value: value,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin4IdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'admin4Id',
        value: value,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> admin4IdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'admin4Id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> countryIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'country',
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> countryIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'country',
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> countryEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'country',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> countryGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'country',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> countryLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'country',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> countryBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'country',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> countryStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'country',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> countryEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'country',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> countryContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'country',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> countryMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'country',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> countryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'country',
        value: '',
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> countryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'country',
        value: '',
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> countryCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'country_code',
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition>
      countryCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'country_code',
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> countryCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'country_code',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition>
      countryCodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'country_code',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> countryCodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'country_code',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> countryCodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'country_code',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> countryCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'country_code',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> countryCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'country_code',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> countryCodeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'country_code',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> countryCodeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'country_code',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> countryCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'country_code',
        value: '',
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition>
      countryCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'country_code',
        value: '',
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> countryIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'country_id',
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> countryIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'country_id',
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> countryIdEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'country_id',
        value: value,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> countryIdGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'country_id',
        value: value,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> countryIdLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'country_id',
        value: value,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> countryIdBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'country_id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> createdAtEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'created_at',
        value: value,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> createdAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'created_at',
        value: value,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> createdAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'created_at',
        value: value,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> createdAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'created_at',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> elevationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'elevation',
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> elevationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'elevation',
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> elevationEqualTo(
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

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> elevationGreaterThan(
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

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> elevationLessThan(
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

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> elevationBetween(
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

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> featureCodeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'feature_code',
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition>
      featureCodeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'feature_code',
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> featureCodeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'feature_code',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition>
      featureCodeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'feature_code',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> featureCodeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'feature_code',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> featureCodeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'feature_code',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> featureCodeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'feature_code',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> featureCodeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'feature_code',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> featureCodeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'feature_code',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> featureCodeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'feature_code',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> featureCodeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'feature_code',
        value: '',
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition>
      featureCodeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'feature_code',
        value: '',
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> idBetween(
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

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> latitudeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'latitude',
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> latitudeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'latitude',
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> latitudeEqualTo(
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

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> latitudeGreaterThan(
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

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> latitudeLessThan(
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

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> latitudeBetween(
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

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> longitudeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'longitude',
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> longitudeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'longitude',
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> longitudeEqualTo(
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

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> longitudeGreaterThan(
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

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> longitudeLessThan(
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

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> longitudeBetween(
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

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> nameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> nameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'name',
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> nameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> nameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> nameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> nameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> populationIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'population',
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition>
      populationIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'population',
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> populationEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'population',
        value: value,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> populationGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'population',
        value: value,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> populationLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'population',
        value: value,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> populationBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'population',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> timezoneIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'timezone',
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> timezoneIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'timezone',
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> timezoneEqualTo(
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

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> timezoneGreaterThan(
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

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> timezoneLessThan(
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

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> timezoneBetween(
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

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> timezoneStartsWith(
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

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> timezoneEndsWith(
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

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> timezoneContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'timezone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> timezoneMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'timezone',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> timezoneIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'timezone',
        value: '',
      ));
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterFilterCondition> timezoneIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'timezone',
        value: '',
      ));
    });
  }
}

extension CityRepoQueryObject
    on QueryBuilder<CityRepo, CityRepo, QFilterCondition> {}

extension CityRepoQueryLinks
    on QueryBuilder<CityRepo, CityRepo, QFilterCondition> {}

extension CityRepoQuerySortBy on QueryBuilder<CityRepo, CityRepo, QSortBy> {
  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> sortByAdmin1() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'admin1', Sort.asc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> sortByAdmin1Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'admin1', Sort.desc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> sortByAdmin1Id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'admin1Id', Sort.asc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> sortByAdmin1IdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'admin1Id', Sort.desc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> sortByAdmin2() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'admin2', Sort.asc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> sortByAdmin2Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'admin2', Sort.desc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> sortByAdmin2Id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'admin2Id', Sort.asc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> sortByAdmin2IdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'admin2Id', Sort.desc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> sortByAdmin3() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'admin3', Sort.asc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> sortByAdmin3Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'admin3', Sort.desc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> sortByAdmin3Id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'admin3Id', Sort.asc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> sortByAdmin3IdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'admin3Id', Sort.desc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> sortByAdmin4() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'admin4', Sort.asc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> sortByAdmin4Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'admin4', Sort.desc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> sortByAdmin4Id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'admin4Id', Sort.asc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> sortByAdmin4IdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'admin4Id', Sort.desc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> sortByCountry() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'country', Sort.asc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> sortByCountryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'country', Sort.desc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> sortByCountryCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'country_code', Sort.asc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> sortByCountryCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'country_code', Sort.desc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> sortByCountryId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'country_id', Sort.asc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> sortByCountryIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'country_id', Sort.desc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'created_at', Sort.asc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'created_at', Sort.desc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> sortByElevation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'elevation', Sort.asc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> sortByElevationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'elevation', Sort.desc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> sortByFeatureCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'feature_code', Sort.asc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> sortByFeatureCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'feature_code', Sort.desc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> sortByLatitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latitude', Sort.asc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> sortByLatitudeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latitude', Sort.desc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> sortByLongitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'longitude', Sort.asc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> sortByLongitudeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'longitude', Sort.desc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> sortByPopulation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'population', Sort.asc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> sortByPopulationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'population', Sort.desc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> sortByTimezone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timezone', Sort.asc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> sortByTimezoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timezone', Sort.desc);
    });
  }
}

extension CityRepoQuerySortThenBy
    on QueryBuilder<CityRepo, CityRepo, QSortThenBy> {
  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> thenByAdmin1() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'admin1', Sort.asc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> thenByAdmin1Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'admin1', Sort.desc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> thenByAdmin1Id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'admin1Id', Sort.asc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> thenByAdmin1IdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'admin1Id', Sort.desc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> thenByAdmin2() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'admin2', Sort.asc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> thenByAdmin2Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'admin2', Sort.desc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> thenByAdmin2Id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'admin2Id', Sort.asc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> thenByAdmin2IdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'admin2Id', Sort.desc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> thenByAdmin3() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'admin3', Sort.asc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> thenByAdmin3Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'admin3', Sort.desc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> thenByAdmin3Id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'admin3Id', Sort.asc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> thenByAdmin3IdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'admin3Id', Sort.desc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> thenByAdmin4() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'admin4', Sort.asc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> thenByAdmin4Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'admin4', Sort.desc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> thenByAdmin4Id() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'admin4Id', Sort.asc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> thenByAdmin4IdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'admin4Id', Sort.desc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> thenByCountry() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'country', Sort.asc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> thenByCountryDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'country', Sort.desc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> thenByCountryCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'country_code', Sort.asc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> thenByCountryCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'country_code', Sort.desc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> thenByCountryId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'country_id', Sort.asc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> thenByCountryIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'country_id', Sort.desc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'created_at', Sort.asc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'created_at', Sort.desc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> thenByElevation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'elevation', Sort.asc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> thenByElevationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'elevation', Sort.desc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> thenByFeatureCode() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'feature_code', Sort.asc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> thenByFeatureCodeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'feature_code', Sort.desc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> thenByLatitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latitude', Sort.asc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> thenByLatitudeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latitude', Sort.desc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> thenByLongitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'longitude', Sort.asc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> thenByLongitudeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'longitude', Sort.desc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> thenByPopulation() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'population', Sort.asc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> thenByPopulationDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'population', Sort.desc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> thenByTimezone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timezone', Sort.asc);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QAfterSortBy> thenByTimezoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'timezone', Sort.desc);
    });
  }
}

extension CityRepoQueryWhereDistinct
    on QueryBuilder<CityRepo, CityRepo, QDistinct> {
  QueryBuilder<CityRepo, CityRepo, QDistinct> distinctByAdmin1(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'admin1', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QDistinct> distinctByAdmin1Id() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'admin1Id');
    });
  }

  QueryBuilder<CityRepo, CityRepo, QDistinct> distinctByAdmin2(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'admin2', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QDistinct> distinctByAdmin2Id() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'admin2Id');
    });
  }

  QueryBuilder<CityRepo, CityRepo, QDistinct> distinctByAdmin3(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'admin3', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QDistinct> distinctByAdmin3Id() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'admin3Id');
    });
  }

  QueryBuilder<CityRepo, CityRepo, QDistinct> distinctByAdmin4(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'admin4', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QDistinct> distinctByAdmin4Id() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'admin4Id');
    });
  }

  QueryBuilder<CityRepo, CityRepo, QDistinct> distinctByCountry(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'country', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QDistinct> distinctByCountryCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'country_code', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QDistinct> distinctByCountryId() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'country_id');
    });
  }

  QueryBuilder<CityRepo, CityRepo, QDistinct> distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'created_at');
    });
  }

  QueryBuilder<CityRepo, CityRepo, QDistinct> distinctByElevation() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'elevation');
    });
  }

  QueryBuilder<CityRepo, CityRepo, QDistinct> distinctByFeatureCode(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'feature_code', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QDistinct> distinctByLatitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'latitude');
    });
  }

  QueryBuilder<CityRepo, CityRepo, QDistinct> distinctByLongitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'longitude');
    });
  }

  QueryBuilder<CityRepo, CityRepo, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CityRepo, CityRepo, QDistinct> distinctByPopulation() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'population');
    });
  }

  QueryBuilder<CityRepo, CityRepo, QDistinct> distinctByTimezone(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'timezone', caseSensitive: caseSensitive);
    });
  }
}

extension CityRepoQueryProperty
    on QueryBuilder<CityRepo, CityRepo, QQueryProperty> {
  QueryBuilder<CityRepo, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<CityRepo, String?, QQueryOperations> admin1Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'admin1');
    });
  }

  QueryBuilder<CityRepo, int?, QQueryOperations> admin1IdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'admin1Id');
    });
  }

  QueryBuilder<CityRepo, String?, QQueryOperations> admin2Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'admin2');
    });
  }

  QueryBuilder<CityRepo, int?, QQueryOperations> admin2IdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'admin2Id');
    });
  }

  QueryBuilder<CityRepo, String?, QQueryOperations> admin3Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'admin3');
    });
  }

  QueryBuilder<CityRepo, int?, QQueryOperations> admin3IdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'admin3Id');
    });
  }

  QueryBuilder<CityRepo, String?, QQueryOperations> admin4Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'admin4');
    });
  }

  QueryBuilder<CityRepo, int?, QQueryOperations> admin4IdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'admin4Id');
    });
  }

  QueryBuilder<CityRepo, String?, QQueryOperations> countryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'country');
    });
  }

  QueryBuilder<CityRepo, String?, QQueryOperations> countryCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'country_code');
    });
  }

  QueryBuilder<CityRepo, int?, QQueryOperations> countryIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'country_id');
    });
  }

  QueryBuilder<CityRepo, DateTime, QQueryOperations> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'created_at');
    });
  }

  QueryBuilder<CityRepo, double?, QQueryOperations> elevationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'elevation');
    });
  }

  QueryBuilder<CityRepo, String?, QQueryOperations> featureCodeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'feature_code');
    });
  }

  QueryBuilder<CityRepo, double?, QQueryOperations> latitudeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'latitude');
    });
  }

  QueryBuilder<CityRepo, double?, QQueryOperations> longitudeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'longitude');
    });
  }

  QueryBuilder<CityRepo, String?, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<CityRepo, int?, QQueryOperations> populationProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'population');
    });
  }

  QueryBuilder<CityRepo, String?, QQueryOperations> timezoneProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'timezone');
    });
  }
}
