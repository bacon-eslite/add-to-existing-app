import 'package:isar/isar.dart';

part 'user_repo.g.dart';

@collection
class UserRepo {
  Id id = Isar.autoIncrement;

  String? name;

  String? email;

  String? phone;

  DateTime? createdAt;

  DateTime? createdAtUtc;
}
