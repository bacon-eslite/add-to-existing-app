import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_module/common/config/config.dart';
import 'package:flutter_module/feature/feature.dart';
import 'package:flutter_module/generated/l10n.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('home testing', () {
    testWidgets('test home menu', (tester) async {
      await tester.pumpWidget(
        MaterialApp.router(
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
      );

      await tester.pumpAndSettle();

      final BuildContext context = tester.element(find.byType(HomePage));

      expect(find.text(S.of(context).home_menu_fullscreen), findsOneWidget);

      expect(find.text(S.of(context).home_menu_buttons_and_messaging),
          findsOneWidget);

      expect(find.text(S.of(context).home_menu_weather), findsOneWidget);

      expect(find.text(S.of(context).home_menu_user_list), findsOneWidget);

      expect(find.text(S.of(context).home_menu_fragment), findsOneWidget);

      expect(find.text(S.of(context).home_menu_counter), findsOneWidget);

      final weatherTile =
          find.widgetWithText(ListTile, S.of(context).home_menu_weather);

      await tester.tap(weatherTile);

      await tester.pumpAndSettle();

      expect(find.text(S.of(context).home_menu_weather), findsOneWidget);
    });
  });
}
