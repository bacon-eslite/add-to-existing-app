// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../hello/model/user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['id'] as int?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      createdAt: _$JsonConverterFromJson<String, DateTime?>(
          json['created_at'], const JsonDateTimeConverter().fromJson),
      createdAtUtc: _$JsonConverterFromJson<String, DateTime?>(
          json['created_at_utc'], const JsonDateTimeConverter().fromJson),
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'created_at': const JsonDateTimeConverter().toJson(instance.createdAt),
      'created_at_utc':
          const JsonDateTimeConverter().toJson(instance.createdAtUtc),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);
