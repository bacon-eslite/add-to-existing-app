import 'package:flutter/material.dart';
import 'package:flutter_module/domain/user/arguments.dart';
import 'package:flutter_module/domain/user/view/user_detail_page.dart';
import 'package:flutter_module/domain/user/view/user_list_page.dart';

class UserRoutes {
  UserRoutes._();

  static UserRoutes? _instance;

  factory UserRoutes() => _instance ??= UserRoutes._();

  Map<String, Route> routes(RouteSettings settings) => {
        userList: MaterialPageRoute(builder: (context) => const UserListPage()),
        userDetail: MaterialPageRoute(builder: (context) {
          final args = settings.arguments as UserDetailArguments;
          return UserDetailPage(user: args.user);
        }),
      };

  static const String userList = '/users';

  static const String userDetail = '/users/detail';
}
