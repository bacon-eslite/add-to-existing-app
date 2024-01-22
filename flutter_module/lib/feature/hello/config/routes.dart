import 'package:go_router/go_router.dart';

import '../page/page.dart';
import '../view/view.dart';

class HelloRoutes {
  static HelloRoutes? _instance;

  HelloRoutes._();

  factory HelloRoutes() => _instance ??= HelloRoutes._();

  final routes = [
    GoRoute(
      path: partialView,
      builder: (context, state) => const PartialViewWidget(),
    ),
    GoRoute(
      path: fullscreen,
      builder: (context, state) => const FullScreenWidget(),
    ),
    GoRoute(
      path: userList,
      builder: (context, state) => const UserListPage(),
    ),
    GoRoute(
      path: userDetail,
      builder: (context, state) => UserDetailPage(userId: state.extra as int),
    ),
    GoRoute(
      path: buttons,
      builder: (context, state) => const ButtonListPage(),
    ),
  ];

  static const String partialView = '/partial_view';
  static const String fullscreen = '/fullscreen';
  static const String userList = '/users';
  static const String userDetail = '/users/detail';
  static const String buttons = '/buttons';
}
