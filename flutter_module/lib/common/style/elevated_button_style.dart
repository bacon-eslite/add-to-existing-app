import 'package:flutter/material.dart';
import 'package:flutter_module/common/style/app_color.dart';

class ElevatedButtonStyles {
  static ButtonStyle primary({double? radius}) => ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius ?? 32),
          side: const BorderSide(color: AppColors.primary),
        ),
      );

  static ButtonStyle success({double? radius}) => ElevatedButton.styleFrom(
        backgroundColor: AppColors.success,
        foregroundColor: AppColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius ?? 32),
          side: const BorderSide(color: AppColors.success),
        ),
      );

  static ButtonStyle info({double? radius}) => ElevatedButton.styleFrom(
        backgroundColor: AppColors.info,
        foregroundColor: AppColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius ?? 32),
          side: const BorderSide(color: AppColors.info),
        ),
      );

  static ButtonStyle warning({double? radius}) => ElevatedButton.styleFrom(
        backgroundColor: AppColors.warning,
        foregroundColor: AppColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius ?? 32),
          side: const BorderSide(color: AppColors.warning),
        ),
      );

  static ButtonStyle danger({double? radius}) => ElevatedButton.styleFrom(
        backgroundColor: AppColors.danger,
        foregroundColor: AppColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius ?? 32),
          side: const BorderSide(color: AppColors.danger),
        ),
      );
}
