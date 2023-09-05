import 'package:flutter/material.dart';

class ButtonShape {
  static RoundedRectangleBorder rounded({double? radius}) =>
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius ?? 32),
      );
}
