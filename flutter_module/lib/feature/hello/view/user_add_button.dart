import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:random_x/random_x.dart';

import '../../../generated/l10n.dart';
import '../model/model.dart';
import '../provider/user.dart';

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
      child: Text(S.of(context).user_add),
    );
  }
}
