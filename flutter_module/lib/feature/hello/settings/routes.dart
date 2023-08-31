import 'package:flutter/material.dart';
import 'package:flutter_module/feature/hello/hello.dart';

class HelloRoutes {
  static HelloRoutes? _instance;

  HelloRoutes._();

  factory HelloRoutes() => _instance ??= HelloRoutes._();

  Map<String, Route> routes(RouteSettings settings) => {
        fragment:
            MaterialPageRoute(builder: (context) => const FragmentWidget()),
        fullscreen:
            MaterialPageRoute(builder: (context) => const FullScreenWidget()),
      };

  static String fragment = '/fragment';
  static String fullscreen = '/fullscreen';
}
