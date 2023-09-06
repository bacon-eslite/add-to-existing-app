import 'package:flutter/material.dart';
import 'package:flutter_module/feature/hello/config/config.dart';
import 'package:flutter_module/feature/hello/provider/provider.dart';
import 'package:flutter_module/feature/hello/view/view.dart';
import 'package:flutter_module/generated/l10n.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserListPage extends ConsumerWidget {
  const UserListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).home_menu_user_list),
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
          title: Text(user.name ?? S.of(context).user_no_name),
          subtitle: Text('${user.createdAt}'),
          trailing: IconButton(
            onPressed: () => ref.read(userListProvider.notifier).remove(user),
            icon: const Icon(Icons.delete),
          ),
          onTap: () => Navigator.of(context).pushNamed(
            HelloRoutes.userDetail,
            arguments: UserDetailArguments(user),
          ),
        );
      },
    );
  }
}
