import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../generated/l10n.dart';
import '../../feature.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).home_title),
      ),
      body: const HomeMenu(),
    );
  }
}

class HomeMenu extends StatelessWidget {
  const HomeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(S.of(context).home_menu_counter),
          onTap: () =>
              context.push(Uri(path: HomeRoutes.counter, queryParameters: {
            'title': S.of(context).home_menu_counter,
          }).toString()),
        ),
        ListTile(
          title: Text(S.of(context).home_menu_fullscreen),
          onTap: () => context.push(HelloRoutes.fullscreen),
        ),
        ListTile(
          title: Text(S.of(context).home_menu_fragment),
          onTap: () => context.push(HelloRoutes.fragment),
        ),
        ListTile(
          title: Text(S.of(context).home_menu_user_list),
          onTap: () => context.push(HelloRoutes.userList),
        ),
        ListTile(
          title: Text(S.of(context).home_menu_weather),
          onTap: () => context.push(WeatherRoutes.weather),
        ),
        ListTile(
          title: Text(S.of(context).home_menu_buttons_and_messaging),
          onTap: () => context.push(HelloRoutes.buttons),
        ),
      ],
    );
  }
}
