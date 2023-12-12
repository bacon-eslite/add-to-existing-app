import 'package:go_router/go_router.dart';

import '../page/page.dart';

class HomeRoutes {
  HomeRoutes._();

  static HomeRoutes? _instance;

  factory HomeRoutes() => _instance ??= HomeRoutes._();

  final routes = [
    GoRoute(
      path: home,
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: counter,
      builder: (context, state) =>
          CounterPage(title: state.uri.queryParameters['title']),
    ),
  ];

  static String home = '/';
  static String counter = '/counter';
}
