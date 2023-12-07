import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../model/user.dart';

part 'user.g.dart';

@riverpod
class UserList extends _$UserList {
  @override
  List<User> build() => [];

  void add(User user) {
    state = [...state, user];
  }

  void remove(User user) {
    state = [...state]..remove(user);
  }

  void reset() {
    state = [];
  }
}
