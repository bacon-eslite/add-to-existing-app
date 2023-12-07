import 'package:json_annotation/json_annotation.dart';

import '../../extension/datetime.dart';

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
