import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'common/config/config.dart';
import 'common/style/style.dart';
import 'feature/feature.dart';
import 'generated/l10n.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        ...AppLocalizations.localizationsDelegates,
        S.delegate,
      ],
      supportedLocales: [
        ...AppLocalizations.supportedLocales,
        ...S.delegate.supportedLocales,
      ],
      initialRoute: HomeRoutes.home,
      theme: Theme.of(context).copyWith(
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primary,
          primary: AppColors.primary,
        ),
        textTheme: TextTheme(
          headlineLarge: TextStyles.headlineLarge(),
          headlineMedium: TextStyles.headlineMedium(),
          headlineSmall: TextStyles.headlineSmall(),
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
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            shape: ButtonShape.rounded(),
          ),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.white,
        ),
      ),
      onGenerateRoute: (settings) => AppRoutes().onGenerateRoute(settings),
    );
  }
}
