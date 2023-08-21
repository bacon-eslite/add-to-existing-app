import 'package:flutter/material.dart';
import 'package:flutter_module/fullscreen/fullscreen_widget.dart';

class FullscreenRoute {
  FullscreenRoute._();

  static FullscreenRoute? _instance;

  factory FullscreenRoute() => _instance ??= FullscreenRoute._();

  Map<String, Route> routes(RouteSettings settings) => {
    fullscreen:
        MaterialPageRoute(builder: (context) => const FullScreenWidget()),
  };

  static String fullscreen = '/fullscreen';
}
