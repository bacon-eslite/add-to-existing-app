import 'package:flutter/material.dart';
import 'package:flutter_module/domain/hello/routes.dart';
import 'package:flutter_module/domain/home/routes.dart';
import 'package:flutter_module/domain/user/routes.dart';
import 'package:petstore_api/api.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo'),
        actions: [
          TextButton(
              onPressed: () {
                final p = Pet(name: 'name');
                PetApi().addPet(p);
              },
              child: Text('ok')),
        ],
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
          onTap: () => Navigator.pushNamed(context, HomeRoutes.counter),
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
          onTap: () => Navigator.pushNamed(context, UserRoutes.userList),
        ),
      ],
    );
  }
}
