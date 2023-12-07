import 'package:flutter/material.dart';

import '../../feature/feature.dart';

class AppRoutes {
  static AppRoutes? _instance;

  factory AppRoutes() {
    _instance ??= AppRoutes._();
    return _instance!;
  }

  AppRoutes._();

  Map<String, Route> routes(RouteSettings settings) => {
        ...HomeRoutes().routes(settings),
        ...HelloRoutes().routes(settings),
        ...WeatherRoutes().routes(settings),
      };

  Route? onGenerateRoute(RouteSettings settings) =>
      routes(settings)[settings.name];

  static void navigateTo(
          BuildContext context, String routeName, dynamic arguments) =>
      Navigator.of(context).pushNamed(routeName, arguments: arguments);
}
