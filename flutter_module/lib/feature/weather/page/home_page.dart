import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../config/config.dart';

class WeatherHomePage extends ConsumerWidget {
  const WeatherHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Weather Home Page')),
      body: ListView(
        children: [
          ListTile(
            title: const Text('City weather'),
            onTap: () {
              Navigator.pushNamed(context, WeatherRoutes.search);
            },
          ),
          ListTile(
            title: const Text('Current weather'),
            onTap: () {
              Navigator.pushNamed(context, WeatherRoutes.current);
            },
          ),
        ],
      ),
    );
  }
}
