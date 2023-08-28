import 'package:intl/intl.dart';

extension DateTimeFormatted on DateTime {
  String get yMd => DateFormat('yyyy-MM-dd').format(this);

  String get yMMMd => DateFormat('yyyy-MMM-dd').format(this);

  String get yMdHm => DateFormat('yyyy-MM-dd HH:mm').format(this);

  String get yMdHms => DateFormat('yyyy-MM-dd HH:mm:ss').format(this);

  String get yMdHmsS => DateFormat('yyyy-MM-dd HH:mm:ss.SSS').format(this);

  String get hm => DateFormat('HH:mm').format(this);

  String get hms => DateFormat('HH:mm:ss').format(this);

  String get ms => DateFormat('mm:ss').format(this);

  String get withTimeZone {
    final formatted = DateFormat('yyyy-MM-ddTHH:mm:ss').format(toUtc());
    return '$formatted'
        '${timeZoneOffset.isNegative ? '-' : '+'}'
        '${timeZoneOffset.inHours.abs().toString().padLeft(2, '0')}:'
        '${timeZoneOffset.inMinutes.remainder(60).abs().toString().padLeft(2, '0')}';
  }
}

extension StringToDateTime on String {
  DateTime? get toDateTime => DateTime.tryParse(this);
}
