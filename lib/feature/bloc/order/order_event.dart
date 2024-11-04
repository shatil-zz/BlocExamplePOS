
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sample_pos/feature/model/order_model.dart';
import 'package:sample_pos/feature/model/service_table_model.dart';
part 'order_event.freezed.dart';

@freezed
class OrderEvent with _$OrderEvent {
  const factory OrderEvent.loadOrders() = LoadOrders;
  const factory OrderEvent.ordersUpdated(Map<int,ServiceTableModel> tables) = ServiceTablesUpdated;
  const factory OrderEvent.addOrUpdateOrder(List<OrderModel> orders) = AddOrder;
}
