import 'package:flutter/material.dart';
import 'package:flutter_module/common/style/style.dart';

class TextStyles {
  static TextStyle title({Color? color}) => TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: color ?? AppColors.text,
      );

  static TextStyle subtitle({Color? color}) => TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: color ?? AppColors.text,
      );

  static TextStyle body({Color? color}) => TextStyle(
        fontSize: 14,
        color: color ?? AppColors.text,
      );

  static TextStyle caption({Color? color}) => TextStyle(
        fontSize: 12,
        color: color ?? AppColors.text,
      );

  static TextStyle success({double? size}) => TextStyle(
        fontSize: size ?? 12,
        color: AppColors.successColor,
      );

  static TextStyle info({double? size}) => TextStyle(
        fontSize: size ?? 12,
        color: AppColors.infoColor,
      );

  static TextStyle warning({double? size}) => TextStyle(
        fontSize: size ?? 12,
        color: AppColors.warningColor,
      );

  static TextStyle danger({double? size}) => TextStyle(
        fontSize: size ?? 12,
        color: AppColors.dangerColor,
      );
}
