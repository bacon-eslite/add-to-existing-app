import 'package:flutter/material.dart';
import 'package:flutter_module/fragment/routes.dart';
import 'package:flutter_module/fullscreen/routes.dart';
import 'package:flutter_module/home/routes.dart';

class AppRoutes {
  static AppRoutes? _instance;

  factory AppRoutes() {
    _instance ??= AppRoutes._();
    return _instance!;
  }

  AppRoutes._();

  Map<String, Route> routes(RouteSettings settings) => {
        ...HomeRoutes().routes(settings),
        ...FullscreenRoute().routes(settings),
        ...FragmentRoutes().routes,
      };

  Route? onGenerateRoute(RouteSettings settings) =>
      routes(settings)[settings.name];
}
