import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_module/common/config/config.dart';
import 'package:flutter_module/feature/feature.dart';
import 'package:flutter_module/generated/l10n.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('weather testing', () {
    testWidgets('test weather menu', (tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: MaterialApp.router(
            localizationsDelegates: const [
              ...AppLocalizations.localizationsDelegates,
              S.delegate,
            ],
            supportedLocales: [
              ...AppLocalizations.supportedLocales,
              ...S.delegate.supportedLocales,
            ],
            routerConfig: AppRoutes().router,
          ),
        ),
      );

      await tester.pumpAndSettle();

      final BuildContext context = tester.element(find.byType(WeatherHomePage));

      expect(find.text(S.of(context).home_menu_weather), findsOneWidget);

      expect(find.byType(ListView), findsOneWidget);

      expect(find.byType(ListTile), findsNWidgets(2));

      final cityWeatherTile =
          find.widgetWithText(ListTile, S.of(context).weather_city_weather);

      await tester.tap(cityWeatherTile);

      await tester.pumpAndSettle();

      expect(find.byType(CitySearchBar), findsOneWidget);
    });

    testWidgets('test search page', (tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: MaterialApp.router(
            localizationsDelegates: const [
              ...AppLocalizations.localizationsDelegates,
              S.delegate,
            ],
            supportedLocales: [
              ...AppLocalizations.supportedLocales,
              ...S.delegate.supportedLocales,
            ],
            routerConfig: AppRoutes().router,
          ),
        ),
      );

      await tester.pumpAndSettle();

      expect(find.byType(CitySearchBar), findsOneWidget);

      final textField = find.byType(TextFormField);

      await tester.enterText(textField, 'London');

      await tester.pumpAndSettle();

      final searchButton = find.byIcon(Icons.search);

      await tester.tap(searchButton);

      await tester.pumpAndSettle();

      expect(find.byType(CityList), findsOneWidget);

      expect(find.byType(CityTile), findsWidgets);
    });
  });
}
