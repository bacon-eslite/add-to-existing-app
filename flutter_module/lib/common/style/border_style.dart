import 'package:flutter/material.dart';

class BorderStyles {
  static outlineInputBorder({
    Color? color,
    double? width,
    double? radius,
  }) =>
      OutlineInputBorder(
        borderSide: BorderSide(color: color ?? Colors.black, width: width ?? 1),
        borderRadius: BorderRadius.all(Radius.circular(radius ?? 32)),
      );
}
