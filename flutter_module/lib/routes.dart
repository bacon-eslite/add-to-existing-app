import 'package:flutter/material.dart';
import 'package:flutter_module/domain/fragment/routes.dart';
import 'package:flutter_module/domain/fullscreen/routes.dart';
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
        ...FullscreenRoutes().routes(settings),
        ...FragmentRoutes().routes,
      };

  Route? onGenerateRoute(RouteSettings settings) =>
      routes(settings)[settings.name];
}
