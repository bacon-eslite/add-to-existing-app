import 'package:equatable/equatable.dart';
import 'package:flutter_module/util/json_converter/DateTimeConverter.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class User extends Equatable {
  final int? id;
  final String? name;
  final String? email;
  final String? phone;
  @JsonDateTimeConverter()
  final DateTime? createdAt;
  @JsonDateTimeConverter()
  final DateTime? createdAtUtc;

  const User({
    this.id,
    this.name,
    this.email,
    this.phone,
    this.createdAt,
    this.createdAtUtc,
  });

  User copyWith({
    int? id,
    String? name,
    String? email,
    String? phone,
    DateTime? createdAt,
    DateTime? createdAtUtc,
  }) =>
      User(
        id: id ?? this.id,
        name: name ?? this.name,
        email: email ?? this.email,
        phone: phone ?? this.phone,
      );

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);

  @override
  String toString() =>
      'User{id: $id, name: $name, createdAt: $createdAt, createdAtUtc: $createdAtUtc}';

  @override
  List<Object?> get props => [id, name, createdAt, createdAtUtc];
}
