import 'package:equatable/equatable.dart';
import 'package:petstore_api/api.dart' as api;

class User extends Equatable {
  const User({
    this.id,
    this.username,
    this.firstName,
    this.lastName,
    this.email,
    this.password,
    this.phone,
    this.userStatus,
  });

  final int? id;
  final String? username;
  final String? firstName;
  final String? lastName;
  final String? email;
  final String? password;
  final String? phone;
  final int? userStatus;

  String get name => '$firstName $lastName';

  @override
  List<Object?> get props => [
        id,
        username,
        firstName,
        lastName,
        email,
        password,
        phone,
        userStatus,
      ];

  factory User.fromDto(api.User dto) => User(
        id: dto.id,
        username: dto.username,
        firstName: dto.firstName,
        lastName: dto.lastName,
        email: dto.email,
        password: dto.password,
        phone: dto.phone,
        userStatus: dto.userStatus,
      );

  api.User toDto() => api.User(
        id: id,
        username: username,
        firstName: firstName,
        lastName: lastName,
        email: email,
        password: password,
        phone: phone,
        userStatus: userStatus,
      );
}
