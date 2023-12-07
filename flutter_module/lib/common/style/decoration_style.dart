import 'package:flutter/material.dart';

import 'border_style.dart';

class DecorationStyles {
  static textFieldDecorationStyle({
    String? labelText,
    String? hintText,
    String? errorText,
  }) {
    return InputDecoration(
      labelText: labelText,
      hintText: hintText,
      errorText: errorText,
      border: BorderStyles.outlineInputBorder(color: Colors.black),
      enabledBorder: BorderStyles.outlineInputBorder(color: Colors.green),
      disabledBorder: BorderStyles.outlineInputBorder(color: Colors.grey),
      focusedBorder: BorderStyles.outlineInputBorder(color: Colors.blue),
      errorBorder: BorderStyles.outlineInputBorder(color: Colors.red),
      contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
    );
  }
}
