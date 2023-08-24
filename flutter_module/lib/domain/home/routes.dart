import 'package:flutter/material.dart';
import 'package:flutter_module/domain/home/home_widget.dart';

class HomeRoutes {
  HomeRoutes._();

  static HomeRoutes? _instance;

  factory HomeRoutes() => _instance ??= HomeRoutes._();

  Map<String, Route> routes(RouteSettings settings) => {
        home: MaterialPageRoute(
            builder: (context) =>
                MyHomePage(title: settings.arguments as String?)),
      };

  static String home = '/home';
}
