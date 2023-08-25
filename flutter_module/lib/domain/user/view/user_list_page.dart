import 'package:flutter/material.dart';
import 'package:flutter_module/domain/user/arguments.dart';
import 'package:flutter_module/domain/user/model/user.dart';
import 'package:flutter_module/domain/user/provider/user.dart';
import 'package:flutter_module/domain/user/routes.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:random_x/random_x.dart';

class UserListPage extends ConsumerWidget {
  const UserListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User List'),
        actions: [
          IconButton(
            onPressed: () => ref.read(userListProvider.notifier).reset(),
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: const SafeArea(
        child: Column(
          children: [
            Expanded(child: UserList()),
            UserAddButton(),
          ],
        ),
      ),
    );
  }
}

class UserList extends ConsumerWidget {
  const UserList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView.builder(
      itemCount: ref.watch(userListProvider).length,
      itemBuilder: (context, index) {
        final user = ref.watch(userListProvider)[index];
        return ListTile(
          title: Text(user.name ?? 'No name'),
          subtitle: Text('${user.createdAt}'),
          trailing: IconButton(
            onPressed: () => ref.read(userListProvider.notifier).remove(user),
            icon: const Icon(Icons.delete),
          ),
          onTap: () => Navigator.of(context).pushNamed(
            UserRoutes.userDetail,
            arguments: UserDetailArguments(user),
          ),
        );
      },
    );
  }
}

class UserAddButton extends ConsumerWidget {
  const UserAddButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      onPressed: () {
        ref.read(userListProvider.notifier).add(
              User(
                id: ref.watch(userListProvider).length + 1,
                name: RndX.generateName(),
                email: RndX.generateEmail(),
                phone: RndX.generatePhoneNumber().toString(),
                createdAt: DateTime.now(),
                createdAtUtc: DateTime.now().toUtc(),
              ),
            );
      },
      child: const Text('Add User'),
    );
  }
}
