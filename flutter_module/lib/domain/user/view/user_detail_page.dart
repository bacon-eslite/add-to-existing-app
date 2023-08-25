import 'package:flutter/material.dart';
import 'package:flutter_module/domain/user/model/user.dart';
import 'package:flutter_module/extension/datetime.dart';

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
                const Text('Id'),
                Text('${user.id}'),
                const SizedBox(),
              ],
            ),
            TableRow(
              children: [
                const Text('Name'),
                Text('${user.name}'),
                const SizedBox(),
              ],
            ),
            TableRow(
              children: [
                const Text('Email'),
                Text('${user.email}'),
                const SizedBox(),
              ],
            ),
            TableRow(
              children: [
                const Text('Phone'),
                Text('${user.phone}'),
                const SizedBox(),
              ],
            ),
            TableRow(
              children: [
                const Text('Local'),
                Text('${user.createdAt?.yMdHms}'),
                Text('${user.createdAt?.withTimeZone}'),
              ],
            ),
            TableRow(
              children: [
                const Text('UTC'),
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
