import 'package:flutter/material.dart';
import 'package:flutter_module/feature/hello/model/user.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../common/extension/extension.dart';
import '../../../generated/l10n.dart';
import '../provider/provider.dart';

class UserDetailPage extends ConsumerWidget {
  final int userId;

  const UserDetailPage({Key? key, required this.userId}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.read(userListProvider.notifier).findById(userId);
    return Scaffold(
      appBar: AppBar(
        title:
            Text(user != null ? '${user.id}.${user.name}' : 'User not found'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: _UserDetailWidget(user: user),
      ),
    );
  }
}

class _UserDetailWidget extends StatelessWidget {
  const _UserDetailWidget({
    Key? key,
    this.user,
  }) : super(key: key);

  final User? user;

  @override
  Widget build(BuildContext context) {
    if (user == null) {
      return const Center(child: Text('User not found'));
    }
    return Table(
      columnWidths: const {
        0: FixedColumnWidth(50),
        1: FlexColumnWidth(),
        2: FlexColumnWidth(),
      },
      children: [
        TableRow(
          children: [
            Text(S.of(context).user_id),
            Text('${user!.id}'),
            const SizedBox(),
          ],
        ),
        TableRow(
          children: [
            Text(S.of(context).user_name),
            Text('${user!.name}'),
            const SizedBox(),
          ],
        ),
        TableRow(
          children: [
            Text(S.of(context).user_name),
            Text('${user!.email}'),
            const SizedBox(),
          ],
        ),
        TableRow(
          children: [
            Text(S.of(context).user_phone),
            Text('${user!.phone}'),
            const SizedBox(),
          ],
        ),
        TableRow(
          children: [
            Text(S.of(context).user_local_create_time),
            Text('${user!.createdAt?.yMdHms}'),
            Text('${user!.createdAt?.withTimeZone}'),
          ],
        ),
        TableRow(
          children: [
            Text(S.of(context).user_utc_create_time),
            Text('${user!.createdAtUtc?.yMdHms}'),
            Text('${user!.createdAtUtc?.withTimeZone}'),
          ],
        ),
      ],
    );
  }
}
