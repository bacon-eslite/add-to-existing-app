import 'package:flutter/material.dart';

void showSnackBar(BuildContext context, String message,
        {SnackBarAction? action}) =>
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      action: action,
    ));

void showSnackBarError(BuildContext context, String message,
        {SnackBarAction? action}) =>
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      action: action,
      backgroundColor: Colors.red,
    ));
