import 'package:flutter/material.dart';

import '../page/page.dart';

class HomeRoutes {
  HomeRoutes._();

  static HomeRoutes? _instance;

  factory HomeRoutes() => _instance ??= HomeRoutes._();

  Map<String, Route> routes(RouteSettings settings) => {
        home: MaterialPageRoute(builder: (context) => const HomePage()),
        counter: MaterialPageRoute(
            builder: (context) =>
                CounterPage(title: settings.arguments as String?)),
      };

  static String home = '/home';
  static String counter = '/counter';
}
