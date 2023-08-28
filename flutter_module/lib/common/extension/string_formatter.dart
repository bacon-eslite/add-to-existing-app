import 'package:flutter/material.dart';

extension StringUrl on String {
  Uri? get toUri => Uri.tryParse(this);
}

extension StringDatetime on String {
  DateTime? get toDateTime => DateTime.tryParse(this);

  String get localTime => toDateTime?.toLocal().toString() ?? '';

  String get utcTime => toDateTime?.toUtc().toString() ?? '';
}

extension ScaffoldExt on Scaffold {
  void hideKeyboard(BuildContext context) =>
      FocusScope.of(context).requestFocus(FocusNode());

  void showSnackBar(
    BuildContext context,
    String message, {
    SnackBarAction? action,
  }) =>
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
          action: action,
        ),
      );

  void showSnackBarError(
    BuildContext context,
    String message, {
    SnackBarAction? action,
  }) =>
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(message),
          action: action,
          backgroundColor: Colors.red,
        ),
      );
}
