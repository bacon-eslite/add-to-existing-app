import 'package:equatable/equatable.dart';
import 'package:petstore_api/api.dart' as api;

import 'address.dart';

class Customer extends Equatable {
  const Customer({
    int? id,
    String? username,
    List<Address>? addresses,
  })  : _id = id,
        _username = username,
        _addresses = addresses;

  final int? _id;
  final String? _username;
  final List<Address>? _addresses;

  int? get id => _id;

  String? get username => _username;

  List<Address>? get addresses => _addresses;

  // from dto
  factory Customer.fromDto(api.Customer dto) => Customer(
        id: dto.id,
        username: dto.username,
        addresses: dto.address.map((e) => Address.fromDto(e)).toList(),
      );

  // to dto
  api.Customer toDto() => api.Customer(
        id: _id,
        username: _username,
        address: _addresses?.map((e) => e.toDto()).toList() ?? [],
      );

  @override
  List<Object?> get props => [
        _id,
        _username,
        _addresses,
      ];
}
