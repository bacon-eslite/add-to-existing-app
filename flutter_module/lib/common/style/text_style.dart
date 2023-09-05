import 'package:flutter/material.dart';
import 'package:flutter_module/common/style/style.dart';

class TextStyles {
  static TextStyle displayLarge({Color? color}) => TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.bold,
        color: color ?? AppColors.text,
      );

  static TextStyle displayMedium({Color? color}) => TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: color ?? AppColors.text,
      );

  static TextStyle displaySmall({Color? color}) => TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: color ?? AppColors.text,
      );

  static TextStyle titleLarge({Color? color}) => TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: color ?? AppColors.text,
      );

  static TextStyle titleMedium({Color? color}) => TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: color ?? AppColors.text,
      );

  static TextStyle titleSmall({Color? color}) => TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: color ?? AppColors.text,
      );

  static TextStyle bodyLarge({Color? color}) => TextStyle(
        fontSize: 16,
        color: color ?? AppColors.text,
      );

  static TextStyle bodyMedium({Color? color}) => TextStyle(
        fontSize: 14,
        color: color ?? AppColors.text,
      );

  static TextStyle bodySmall({Color? color}) => TextStyle(
        fontSize: 12,
        color: color ?? AppColors.text,
      );

  static TextStyle labelLarge({Color? color}) => TextStyle(
        fontSize: 12,
        color: color ?? AppColors.text,
      );

  static TextStyle labelMedium({Color? color}) => TextStyle(
        fontSize: 10,
        color: color ?? AppColors.text,
      );

  static TextStyle labelSmall({Color? color}) => TextStyle(
        fontSize: 8,
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
