import 'package:flutter/material.dart';

import '../model/location.dart';
import '../page/page.dart';

class WeatherRoutes {
  static WeatherRoutes? _instance;

  WeatherRoutes._();

  factory WeatherRoutes() => _instance ??= WeatherRoutes._();

  Map<String, Route> routes(RouteSettings settings) => {
        weather:
            MaterialPageRoute(builder: (context) => const WeatherHomePage()),
        search: MaterialPageRoute(builder: (context) => const SearchPage()),
        current: MaterialPageRoute(builder: (context) {
          final location = settings.arguments as Location;
          return ForecastPage(location: location);
        }),
      };

  static const weather = '/weather';
  static const search = '/weather/search';
  static const current = '/weather/current';
}
