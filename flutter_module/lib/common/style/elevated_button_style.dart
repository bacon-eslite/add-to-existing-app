import 'package:flutter/material.dart';
import 'package:flutter_module/common/style/app_color.dart';

class ElevatedButtonStyle {
  static ButtonStyle normal({double? double}) => ElevatedButton.styleFrom(
        backgroundColor: AppColors.normal,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(double ?? 32),
          side: const BorderSide(color: AppColors.normal),
        ),
      );

  static ButtonStyle primary({double? radius}) => ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius ?? 32),
          side: const BorderSide(color: AppColors.primary),
        ),
      );

  static ButtonStyle success({double? radius}) => ElevatedButton.styleFrom(
        backgroundColor: AppColors.success,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius ?? 32),
          side: const BorderSide(color: AppColors.success),
        ),
      );

  static ButtonStyle info({double? radius}) => ElevatedButton.styleFrom(
        backgroundColor: AppColors.info,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius ?? 32),
          side: const BorderSide(color: AppColors.info),
        ),
      );

  static ButtonStyle warning({double? radius}) => ElevatedButton.styleFrom(
        backgroundColor: AppColors.warning,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius ?? 32),
          side: const BorderSide(color: AppColors.warning),
        ),
      );

  static ButtonStyle danger({double? radius}) => ElevatedButton.styleFrom(
        backgroundColor: AppColors.danger,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius ?? 32),
          side: const BorderSide(color: AppColors.danger),
        ),
      );
}
