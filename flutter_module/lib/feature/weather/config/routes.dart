import 'package:go_router/go_router.dart';

import '../page/page.dart';

class WeatherRoutes {
  static WeatherRoutes? _instance;

  WeatherRoutes._();

  factory WeatherRoutes() => _instance ??= WeatherRoutes._();

  final routes = [
    GoRoute(
      path: weather,
      builder: (context, state) => const WeatherHomePage(),
    ),
    GoRoute(
      path: search,
      builder: (context, state) => const SearchPage(),
    ),
    GoRoute(
      path: '$forecast/:city',
      builder: (context, state) =>
          ForecastPage(city: state.pathParameters['city']!),
    ),
  ];

  static const weather = '/weather';
  static const search = '/weather/search';
  static const forecast = '/forecast';
}
