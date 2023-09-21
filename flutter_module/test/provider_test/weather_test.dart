import 'package:flutter/material.dart';
import 'package:flutter_module/feature/feature.dart';
import 'package:flutter_module/feature/weather/provider/provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('weather', () {
    testWidgets('load locations - london', (tester) async {
      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            locationListProvider.overrideWith(() => LocationListMock()),
          ],
          child: const MaterialApp(
            home: LocationApp(),
          ),
        ),
      );

      await tester.pump();

      expect(find.text('0'), findsOneWidget);

      await tester.tap(find.text('London'));

      await tester.pumpAndSettle();

      expect(find.text('1'), findsOneWidget);
    });

    testWidgets('load weather - london', (tester) async {
      await tester.pumpWidget(
        ProviderScope(
          overrides: [
            forecastProvider.overrideWith(() => ForecastProviderMock()),
          ],
          child: const MaterialApp(
            home: ForecastApp(),
          ),
        ),
      );

      await tester.pump();

      expect(find.text('0'), findsOneWidget);

      await tester.tap(find.text('weather'));

      await tester.pumpAndSettle();

      expect(find.text('800'), findsOneWidget);
    });
  });
}

class LocationListMock extends LocationList {
  @override
  Future<void> loadLocations(String query) async {
    state = [
      const Location(
        id: 1,
        name: 'London',
        latitude: 51.509865,
        longitude: -0.118092,
        countryCode: 'GB',
        timezone: 'Europe/London',
        country: 'United Kingdom',
        city: "London",
        town: "London",
      ),
    ];
  }
}

class ForecastProviderMock extends ForecastProvider {
  @override
  Future loadForecast(double latitude, double longitude) async {
    state = const Forecast(
      weatherCode: 800,
      temperature: 10.0,
      windSpeed: 10,
      windDirection: 10,
      isDay: 1,
      time: '2021-05-01 12:00',
    );
  }
}

class LocationApp extends StatelessWidget {
  const LocationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Consumer(
        builder: (context, ref, child) {
          final locations = ref.watch(locationListProvider);
          return Column(
            children: [
              Text('${locations.length}'),
              ElevatedButton(
                onPressed: () => ref
                    .read(locationListProvider.notifier)
                    .loadLocations('London'),
                child: const Text('London'),
              ),
              ElevatedButton(
                onPressed: () =>
                    ref.read(locationListProvider.notifier).reset(),
                child: const Text('reset'),
              ),
            ],
          );
        },
      ),
    );
  }
}

class ForecastApp extends StatelessWidget {
  const ForecastApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Consumer(
        builder: (context, ref, child) {
          final forecast = ref.watch(forecastProvider);
          return Column(
            children: [
              Text('${forecast?.weatherCode ?? 0}'),
              ElevatedButton(
                onPressed: () {
                  ref
                      .read(forecastProvider.notifier)
                      .loadForecast(51.509865, -0.118092);
                },
                child: const Text('weather'),
              ),
            ],
          );
        },
      ),
    );
  }
}
