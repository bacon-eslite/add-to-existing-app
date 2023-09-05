import 'package:flutter/material.dart';

class AppColors {
  static const int primaryCode = 0xFF00BFA5;
  static const int normalCode = 0xFF000000;
  static const int textCode = 0xFF606060;
  static const int successCode = 0xFF00C853;
  static const int infoCode = 0xFF00B0FF;
  static const int warningCode = 0xFFFFAB00;
  static const int dangerCode = 0xFFD50000;

  static const int whiteCode = 0xFFFFFFFF;
  static const int blackCode = 0xFF000000;
  static const int transparentCode = 0x00000000;

  static const Color primaryColor = Color(primaryCode);
  static const Color normalColor = Color(normalCode);
  static const Color textColor = Color(textCode);
  static const Color successColor = Color(successCode);
  static const Color infoColor = Color(infoCode);
  static const Color warningColor = Color(warningCode);
  static const Color dangerColor = Color(dangerCode);

  static const Color whiteColor = Color(whiteCode);
  static const Color blackColor = Color(blackCode);
  static const Color transparentColor = Color(transparentCode);

  static const MaterialColor primary = MaterialColor(
    primaryCode,
    <int, Color>{
      50: Color(0xFFE0F2F1),
      100: Color(0xFFB2DFDB),
      200: Color(0xFF80CBC4),
      300: Color(0xFF4DB6AC),
      400: Color(0xFF26A69A),
      500: primaryColor,
      600: Color(0xFF00897B),
      700: Color(0xFF00796B),
      800: Color(0xFF00695C),
      900: Color(0xFF004D40),
    },
  );

  static const MaterialColor normal = MaterialColor(
    normalCode,
    <int, Color>{
      50: Color(0xFFFAFAFA),
      100: Color(0xFFF5F5F5),
      200: Color(0xFFEEEEEE),
      300: Color(0xFFE0E0E0),
      400: Color(0xFFBDBDBD),
      500: normalColor,
      600: Color(0xFF757575),
      700: Color(0xFF616161),
      800: Color(0xFF424242),
      900: Color(0xFF212121),
    },
  );

  static const MaterialColor text = MaterialColor(
    textCode,
    <int, Color>{
      50: Color(0xFFFAFAFA),
      100: Color(0xFFF5F5F5),
      200: Color(0xFFEEEEEE),
      300: Color(0xFFE0E0E0),
      400: Color(0xFFBDBDBD),
      500: textColor,
      600: Color(0xFF555555),
      700: Color(0xFF404040),
      800: Color(0xFF323232),
      900: Color(0xFF212121),
    },
  );

  static const MaterialColor success = MaterialColor(
    successCode,
    <int, Color>{
      50: Color(0xFFE8F5E9),
      100: Color(0xFFC8E6C9),
      200: Color(0xFFA5D6A7),
      300: Color(0xFF81C784),
      400: Color(0xFF66BB6A),
      500: successColor,
      600: Color(0xFF43A047),
      700: Color(0xFF388E3C),
      800: Color(0xFF2E7D32),
      900: Color(0xFF1B5E20),
    },
  );

  static const MaterialColor info = MaterialColor(
    infoCode,
    <int, Color>{
      50: Color(0xFFE1F5FE),
      100: Color(0xFFB3E5FC),
      200: Color(0xFF81D4FA),
      300: Color(0xFF4FC3F7),
      400: Color(0xFF29B6F6),
      500: infoColor,
      600: Color(0xFF039BE5),
      700: Color(0xFF0288D1),
      800: Color(0xFF0277BD),
      900: Color(0xFF01579B),
    },
  );

  static const MaterialColor warning = MaterialColor(
    warningCode,
    <int, Color>{
      50: Color(0xFFFFF8E1),
      100: Color(0xFFFFECB3),
      200: Color(0xFFFFE082),
      300: Color(0xFFFFD54F),
      400: Color(0xFFFFCA28),
      500: warningColor,
      600: Color(0xFFFFB300),
      700: Color(0xFFFFA000),
      800: Color(0xFFFF8F00),
      900: Color(0xFFFF6F00),
    },
  );

  static const MaterialColor danger = MaterialColor(
    dangerCode,
    <int, Color>{
      50: Color(0xFFFFEBEE),
      100: Color(0xFFFFCDD2),
      200: Color(0xFFEF9A9A),
      300: Color(0xFFE57373),
      400: Color(0xFFEF5350),
      500: dangerColor,
      600: Color(0xFFE53935),
      700: Color(0xFFD32F2F),
      800: Color(0xFFC62828),
      900: Color(0xFFB71C1C),
    },
  );

  static const MaterialColor white = MaterialColor(
    whiteCode,
    <int, Color>{
      50: Color(0xFFFFFFFF),
      100: Color(0xFFFFFFFF),
      200: Color(0xFFFFFFFF),
      300: Color(0xFFFFFFFF),
      400: Color(0xFFFFFFFF),
      500: whiteColor,
      600: Color(0xFFFFFFFF),
      700: Color(0xFFFFFFFF),
      800: Color(0xFFFFFFFF),
      900: Color(0xFFFFFFFF),
    },
  );

  static const MaterialColor black = MaterialColor(
    blackCode,
    <int, Color>{
      50: Color(0xFF000000),
      100: Color(0xFF000000),
      200: Color(0xFF000000),
      300: Color(0xFF000000),
      400: Color(0xFF000000),
      500: blackColor,
      600: Color(0xFF000000),
      700: Color(0xFF000000),
      800: Color(0xFF000000),
      900: Color(0xFF000000),
    },
  );

  static const MaterialColor transparent = MaterialColor(
    transparentCode,
    <int, Color>{
      50: Color(0x00000000),
      100: Color(0x00000000),
      200: Color(0x00000000),
      300: Color(0x00000000),
      400: Color(0x00000000),
      500: transparentColor,
      600: Color(0x00000000),
      700: Color(0x00000000),
      800: Color(0x00000000),
      900: Color(0x00000000),
    },
  );
}
