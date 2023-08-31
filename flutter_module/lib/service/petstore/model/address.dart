import 'package:equatable/equatable.dart';
import 'package:petstore_api/api.dart' as api;

class Address extends Equatable {
  const Address({
    String? street,
    String? city,
    String? state,
    String? zip,
  })  : _street = street,
        _city = city,
        _state = state,
        _zip = zip;

  final String? _street;
  final String? _city;
  final String? _state;
  final String? _zip;

  String get address => '$_street$_city$_state';

  String? get zip => _zip;

  @override
  List<Object?> get props => [
        _street,
        _city,
        _state,
        _zip,
      ];

  factory Address.fromDto(api.Address dto) => Address(
        street: dto.street,
        city: dto.city,
        state: dto.state,
        zip: dto.zip,
      );

  api.Address toDto() => api.Address(
        street: _street,
        city: _city,
        state: _state,
        zip: _zip,
      );
}
