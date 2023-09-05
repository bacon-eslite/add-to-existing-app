import 'package:flutter/material.dart';
import 'package:flutter_module/common/style/style.dart';

class TextButtonStyles {
  static ButtonStyle primary({double? radius}) => TextButton.styleFrom(
        foregroundColor: AppColors.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius ?? 32),
          side: BorderSide(
            color: radius == null ? Colors.transparent : AppColors.primary,
          ),
        ),
      );

  static ButtonStyle success({double? radius}) => TextButton.styleFrom(
        foregroundColor: AppColors.success,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius ?? 32),
          side: BorderSide(
            color: radius == null ? Colors.transparent : AppColors.success,
          ),
        ),
      );

  static ButtonStyle info({double? radius}) => TextButton.styleFrom(
        foregroundColor: AppColors.info,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius ?? 32),
          side: BorderSide(
            color: radius == null ? Colors.transparent : AppColors.info,
          ),
        ),
      );

  static ButtonStyle warning({double? radius}) => TextButton.styleFrom(
        foregroundColor: AppColors.warning,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius ?? 32),
          side: BorderSide(
            color: radius == null ? Colors.transparent : AppColors.warning,
          ),
        ),
      );

  static ButtonStyle danger({double? radius}) => TextButton.styleFrom(
        foregroundColor: AppColors.danger,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius ?? 32),
          side: BorderSide(
            color: radius == null ? Colors.transparent : AppColors.danger,
          ),
        ),
      );
}
