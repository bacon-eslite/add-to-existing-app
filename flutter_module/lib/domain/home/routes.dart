import 'package:flutter/material.dart';
import 'package:flutter_module/domain/home/view/counter_widget.dart';

class HomeRoutes {
  HomeRoutes._();

  static HomeRoutes? _instance;

  factory HomeRoutes() => _instance ??= HomeRoutes._();

  Map<String, Route> routes(RouteSettings settings) => {
        counter: MaterialPageRoute(
            builder: (context) =>
                CounterPage(title: settings.arguments as String?)),
      };

  static String home = '/home';
  static String counter = '/counter';
}
