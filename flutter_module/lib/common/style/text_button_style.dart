import 'package:flutter/material.dart';
import 'package:flutter_module/common/style/style.dart';

class TextButtonStyles {
  static ButtonStyle normal(
          {Color? color, double? fontSize, BorderSide? side}) =>
      TextButton.styleFrom(
        foregroundColor: color ?? AppColors.primary,
        textStyle: fontSize != null
            ? TextStyle(fontSize: fontSize)
            : TextStyles.bodyMedium(),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
          side: side ?? const BorderSide(color: Colors.transparent),
        ),
      );

  static ButtonStyle primary({double? fontSize, BorderSide? side}) =>
      normal(color: AppColors.primary, fontSize: fontSize, side: side);

  static ButtonStyle success({double? fontSize, BorderSide? side}) =>
      normal(color: AppColors.success, fontSize: fontSize, side: side);

  static ButtonStyle info({double? fontSize, BorderSide? side}) =>
      normal(color: AppColors.info, fontSize: fontSize, side: side);

  static ButtonStyle warning({double? fontSize, BorderSide? side}) =>
      normal(color: AppColors.warning, fontSize: fontSize, side: side);

  static ButtonStyle danger({double? fontSize, BorderSide? side}) =>
      normal(color: AppColors.danger, fontSize: fontSize, side: side);
}
