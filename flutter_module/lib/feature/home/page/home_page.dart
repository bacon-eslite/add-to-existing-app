import 'package:flutter/material.dart';
import 'package:flutter_module/feature/feature.dart';
import 'package:flutter_module/service/petstore/petstore.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo'),
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
          title: const Text('Counter'),
          onTap: () {
            PetService().getPetById(1);

            Navigator.pushNamed(context, HomeRoutes.counter);
          },
        ),
        ListTile(
          title: const Text('Full Screen'),
          onTap: () => Navigator.pushNamed(context, HelloRoutes.fullscreen),
        ),
        ListTile(
          title: const Text('Fragment'),
          onTap: () => Navigator.pushNamed(context, HelloRoutes.fragment),
        ),
        ListTile(
          title: const Text('User List'),
          onTap: () => Navigator.pushNamed(context, HelloRoutes.userList),
        ),
        ListTile(
          title: const Text('Weather'),
          onTap: () => Navigator.pushNamed(context, WeatherRoutes.weather),
        ),
      ],
    );
  }
}
