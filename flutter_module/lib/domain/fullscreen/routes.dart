import 'package:flutter/material.dart';
import 'package:flutter_module/domain/fullscreen/fullscreen_widget.dart';

class FullscreenRoutes {
  FullscreenRoutes._();

  static FullscreenRoutes? _instance;

  factory FullscreenRoutes() => _instance ??= FullscreenRoutes._();

  Map<String, Route> routes(RouteSettings settings) => {
    fullscreen:
        MaterialPageRoute(builder: (context) => const FullScreenWidget()),
  };

  static String fullscreen = '/fullscreen';
}
