import 'package:flutter_module/extension/datetime.dart';
import 'package:json_annotation/json_annotation.dart';

class JsonDateTimeConverter implements JsonConverter<DateTime?, String> {
  const JsonDateTimeConverter();

  @override
  DateTime? fromJson(String json) {
    if (json.contains(".")) {
      json = json.substring(0, json.length - 1);
    }
    return json.toDateTime;
  }

  @override
  String toJson(DateTime? json) => json?.withTimeZone ?? '';
}
