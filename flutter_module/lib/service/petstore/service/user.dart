import 'package:flutter_module/service/petstore/model/model.dart';
import 'package:petstore_api/api.dart' hide User;

class UserService {
  static final UserService _instance = UserService._();

  final UserApi api;

  UserService._({UserApi? api}) : api = api ?? UserApi();

  factory UserService() => _instance;

  Future<User?> createUser(User user) async {
    final resp = await api.createUser(user: user.toDto());
    if (resp == null) return null;
    return User.fromDto(resp);
  }

  Future<User?> getUserByName(String username) async {
    final resp = await api.getUserByName(username);
    if (resp == null) return null;
    return User.fromDto(resp);
  }

  Future<User?> updateUser(User user) async {
    await api.updateUser(user.name, user: user.toDto());
    return user;
  }

  Future<void> deleteUser(String username) async {
    await api.deleteUser(username);
  }
}
