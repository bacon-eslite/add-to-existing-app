import 'package:flutter/material.dart';
import 'package:flutter_module/domain/hello/routes.dart';
import 'package:flutter_module/domain/home/routes.dart';

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
      };

  Route? onGenerateRoute(RouteSettings settings) =>
      routes(settings)[settings.name];
}
