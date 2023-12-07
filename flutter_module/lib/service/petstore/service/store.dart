import 'package:petstore_api/api.dart' hide Order, ApiResponse;

import '../model/model.dart';

class StoreService {
  static final StoreService _instance = StoreService._();

  final StoreApi api;

  StoreService._({StoreApi? api}) : api = api ?? StoreApi();

  factory StoreService() => _instance;

  Future<Order?> getOrderById(int id) async {
    final resp = await api.getOrderById(id);
    if (resp == null) return null;
    return Order.fromDto(resp);
  }

  Future<Order?> placeOrder(Order order) async {
    final resp = await api.placeOrder(order: order.toDto());
    if (resp == null) return null;
    return Order.fromDto(resp);
  }

  Future<void> deleteOrder(int id) async {
    await api.deleteOrder(id);
  }

  Future<Map<String, dynamic>?> getInventory() async =>
      await api.getInventory();
}
