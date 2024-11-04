import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sample_pos/feature/model/service_table_model.dart';
part 'order_state.freezed.dart';

@freezed
class OrderState with _$OrderState {
  const factory OrderState.initial() = OrderInitial;
  const factory OrderState.loading() = OrdersLoading;
  const factory OrderState.loaded(Map<int,ServiceTableModel> tables) = ServiceTableLoaded;
  const factory OrderState.error(String message) = OrderError;
}