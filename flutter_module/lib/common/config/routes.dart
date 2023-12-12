import 'package:go_router/go_router.dart';

import '../../feature/feature.dart';

class AppRoutes {
  static AppRoutes? _instance;

  factory AppRoutes() {
    _instance ??= AppRoutes._();
    return _instance!;
  }

  AppRoutes._();

  final router = GoRouter(
    routes: [
      ...HomeRoutes().routes,
      ...HelloRoutes().routes,
      ...WeatherRoutes().routes,
    ],
  );
}
