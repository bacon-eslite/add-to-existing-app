import 'package:flutter/material.dart';
import 'package:flutter_module/feature/hello/page/page.dart';
import 'package:flutter_module/feature/hello/view/view.dart';

import 'config.dart';

class HelloRoutes {
  static HelloRoutes? _instance;

  HelloRoutes._();

  factory HelloRoutes() => _instance ??= HelloRoutes._();

  Map<String, Route> routes(RouteSettings settings) => {
        fragment:
            MaterialPageRoute(builder: (context) => const FragmentWidget()),
        fullscreen:
            MaterialPageRoute(builder: (context) => const FullScreenWidget()),
        userList: MaterialPageRoute(builder: (context) => const UserListPage()),
        userDetail: MaterialPageRoute(builder: (context) {
          final args = settings.arguments as UserDetailArguments;
          return UserDetailPage(user: args.user);
        }),
      };

  static String fragment = '/fragment';
  static String fullscreen = '/fullscreen';

  static const String userList = '/users';
  static const String userDetail = '/users/detail';
}
