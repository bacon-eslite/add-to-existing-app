import 'package:flutter/material.dart';

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
          onTap: () => Navigator.pushNamed(context, HomeRoutes.counter),
        ),
        ListTile(
          title: Text(S.of(context).home_menu_fullscreen),
          onTap: () => Navigator.pushNamed(context, HelloRoutes.fullscreen),
        ),
        ListTile(
          title: Text(S.of(context).home_menu_fragment),
          onTap: () => Navigator.pushNamed(context, HelloRoutes.fragment),
        ),
        ListTile(
          title: Text(S.of(context).home_menu_user_list),
          onTap: () => Navigator.pushNamed(context, HelloRoutes.userList),
        ),
        ListTile(
          title: Text(S.of(context).home_menu_weather),
          onTap: () => Navigator.pushNamed(context, WeatherRoutes.weather),
        ),
        ListTile(
          title: Text(S.of(context).home_menu_buttons_and_messaging),
          onTap: () => Navigator.pushNamed(context, HelloRoutes.buttons),
        ),
      ],
    );
  }
}
