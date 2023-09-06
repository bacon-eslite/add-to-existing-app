import 'package:flutter/material.dart';
import 'package:flutter_module/common/extension/extension.dart';
import 'package:flutter_module/feature/hello/model/model.dart';
import 'package:flutter_module/generated/l10n.dart';

class UserDetailPage extends StatelessWidget {
  final User user;

  const UserDetailPage({Key? key, required this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${user.id}.${user.name}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Table(
          columnWidths: const {
            0: FixedColumnWidth(50),
            1: FlexColumnWidth(),
            2: FlexColumnWidth(),
          },
          children: [
            TableRow(
              children: [
                Text(S.of(context).user_id),
                Text('${user.id}'),
                const SizedBox(),
              ],
            ),
            TableRow(
              children: [
                Text(S.of(context).user_name),
                Text('${user.name}'),
                const SizedBox(),
              ],
            ),
            TableRow(
              children: [
                Text(S.of(context).user_name),
                Text('${user.email}'),
                const SizedBox(),
              ],
            ),
            TableRow(
              children: [
                Text(S.of(context).user_phone),
                Text('${user.phone}'),
                const SizedBox(),
              ],
            ),
            TableRow(
              children: [
                Text(S.of(context).user_local_create_time),
                Text('${user.createdAt?.yMdHms}'),
                Text('${user.createdAt?.withTimeZone}'),
              ],
            ),
            TableRow(
              children: [
                Text(S.of(context).user_utc_create_time),
                Text('${user.createdAtUtc?.yMdHms}'),
                Text('${user.createdAtUtc?.withTimeZone}'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
