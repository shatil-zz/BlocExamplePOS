import 'dart:async';
import 'package:injectable/injectable.dart';
import 'package:sample_pos/feature/db/db_helper.dart';
import 'package:sample_pos/feature/model/order_model.dart';
import 'package:sample_pos/feature/model/service_table_model.dart';
import 'package:sample_pos/utils/constants.dart';
@singleton
@injectable
class OrderRepository {
  DatabaseHelper databaseHelper;
  OrderRepository(this.databaseHelper);

  final StreamController<Map<int, ServiceTableModel>> _ordersController =
  StreamController.broadcast();

  // Method to add order
  Future<void> insertOrder(List<OrderModel> order) async {
    await databaseHelper.insertOrUpdateOrder(order);
    await fetchOrders();
  }

  // Fetch all orders and add to the stream
  Future<void> fetchOrders() async {
    final List<Map<String, dynamic>> list = await databaseHelper.fetchOrders();
    Map<int, ServiceTableModel> serviceTables = {};
    for (Map<String, dynamic> orderMap in list) {
      OrderModel order = OrderModel.fromMap(orderMap);
      if (serviceTables.containsKey(order.tableId)) {
        serviceTables[order.tableId]!.addOrder(order);
      } else {
        serviceTables[order.tableId] = ServiceTableModel(
            [order], order.orderTime, order.tableId,
            tables[order.tableId]["name"]);
      }
    }
    _ordersController.add(serviceTables); // Add orders to the stream
  }

  // Expose a stream of orders
  Stream<Map<int, ServiceTableModel>> get ordersStream => _ordersController.stream;
}
