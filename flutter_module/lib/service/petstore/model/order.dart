import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:petstore_api/api.dart' as api;

class Order extends Equatable {
  const Order({
    int? id,
    int? petId,
    int? quantity,
    DateTime? shipDate,
    OrderStatusEnum? status,
    bool? complete,
  })  : _id = id,
        _petId = petId,
        _quantity = quantity,
        _shipDate = shipDate,
        _status = status,
        _complete = complete;

  final int? _id;
  final int? _petId;
  final int? _quantity;
  final DateTime? _shipDate;
  final OrderStatusEnum? _status;
  final bool? _complete;

  factory Order.fromDto(api.Order dto) => Order(
        id: dto.id,
        petId: dto.petId,
        quantity: dto.quantity,
        shipDate: dto.shipDate,
        status: OrderStatusEnumX.fromName(dto.status?.value ?? 'placed'),
        complete: dto.complete,
      );

  api.Order toDto() => api.Order(
        id: _id,
        petId: _petId,
        quantity: _quantity,
        shipDate: _shipDate,
        status: api.OrderStatusEnum.fromJson(_status?.name ?? 'placed'),
        complete: _complete,
      );

  @override
  List<Object?> get props => [
        _id,
        _petId,
        _quantity,
        _shipDate,
        _status,
        _complete,
      ];
}

enum OrderStatusEnum {
  placed,
  approved,
  delivered,
}

extension OrderStatusEnumX on OrderStatusEnum {
  static OrderStatusEnum? fromName(String name) => OrderStatusEnum.values
      .firstWhereOrNull((element) => element.name == name);
}
