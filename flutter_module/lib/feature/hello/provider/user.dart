import 'package:collection/collection.dart';
import 'package:flutter_module/common/util/util.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/user.dart';

part 'user.g.dart';

@riverpod
class UserListProvider extends _$UserListProvider {
  @override
  List<User> build() {
    Logger().d('UserListProvider.build()');
    return [];
  }

  void add(User user) {
    state = [...state, user];
  }

  void remove(User user) {
    state = [...state]..remove(user);
  }

  void reset() {
    state = [];
  }

  User? findById(int id) =>
      state.firstWhereOrNull((element) => element.id == id);
}
