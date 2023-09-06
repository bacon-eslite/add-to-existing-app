extension StringUrl on String {
  Uri? get toUri => Uri.tryParse(this);
}

extension StringDatetime on String {
  DateTime? get toDateTime => DateTime.tryParse(this);

  String get localTime => toDateTime?.toLocal().toString() ?? '';

  String get utcTime => toDateTime?.toUtc().toString() ?? '';
}
