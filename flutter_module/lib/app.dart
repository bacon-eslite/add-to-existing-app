import 'package:flutter/material.dart';
import 'package:flutter_module/common/config/config.dart';
import 'package:flutter_module/common/style/style.dart';

import 'feature/feature.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeRoutes.home,
      theme: Theme.of(context).copyWith(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
        textTheme: TextTheme(
          displayLarge: TextStyles.displayLarge(),
          displayMedium: TextStyles.displayMedium(),
          displaySmall: TextStyles.displaySmall(),
          titleLarge: TextStyles.titleLarge(),
          titleMedium: TextStyles.titleMedium(),
          titleSmall: TextStyles.titleSmall(),
          bodyLarge: TextStyles.bodyLarge(),
          bodyMedium: TextStyles.bodyMedium(),
          bodySmall: TextStyles.bodySmall(),
          labelLarge: TextStyles.labelLarge(),
          labelMedium: TextStyles.labelMedium(),
          labelSmall: TextStyles.labelSmall(),
        ),
        iconTheme: const IconThemeData(color: AppColors.primary),
      ),
      onGenerateRoute: (settings) => AppRoutes().onGenerateRoute(settings),
    );
  }
}
