import 'package:flutter/material.dart';

import 'style.dart';

class ElevatedButtonStyles {
  static ButtonStyle normal(
          {Color? backgroundColor, Color? foregroundColor, double? fontSize}) =>
      ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? AppColors.white,
        foregroundColor: foregroundColor ?? AppColors.primary,
        textStyle: fontSize != null
            ? TextStyle(fontSize: fontSize)
            : TextStyles.bodyMedium(),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
          side: const BorderSide(color: AppColors.primary),
        ),
      );

  static ButtonStyle primary({double? fontSize}) => normal(
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.white,
        fontSize: fontSize,
      );

  static ButtonStyle success({double? fontSize}) => normal(
        backgroundColor: AppColors.success,
        foregroundColor: AppColors.white,
        fontSize: fontSize,
      );

  static ButtonStyle info({double? fontSize}) => normal(
        backgroundColor: AppColors.info,
        foregroundColor: AppColors.white,
        fontSize: fontSize,
      );

  static ButtonStyle warning({double? fontSize}) => normal(
        backgroundColor: AppColors.warning,
        foregroundColor: AppColors.white,
        fontSize: fontSize,
      );

  static ButtonStyle danger({double? fontSize}) => normal(
        backgroundColor: AppColors.danger,
        foregroundColor: AppColors.white,
        fontSize: fontSize,
      );
}
