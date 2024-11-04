import 'package:sample_pos/feature/model/order_model.dart';

class ServiceTableModel {
  int lastOrderTime;
  List<OrderModel> orders;
  final int tableId;
  final String tableName;

  ServiceTableModel(this.orders, this.lastOrderTime, this.tableId, this.tableName);

  addOrder(OrderModel order) {
    orders.add(order);
    lastOrderTime = order.orderTime;
  }
}
