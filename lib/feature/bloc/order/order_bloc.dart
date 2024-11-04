import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:sample_pos/feature/bloc/order/order_event.dart';
import 'package:sample_pos/feature/bloc/order/order_state.dart';
import 'package:sample_pos/feature/repository/order_repository.dart';

@injectable
class OrderBloc extends Bloc<OrderEvent, OrderState> {
  final OrderRepository orderRepository;

  OrderBloc(this.orderRepository) : super(const OrderInitial()) {
    // Listen to orders stream
    orderRepository.ordersStream.listen((serviceTables) {
      add(ServiceTablesUpdated(
          serviceTables)); // Trigger an event to load orders whenever there is a change
    });

    on<LoadOrders>((event, emit) async {
      emit(const OrdersLoading());
      try {
        await orderRepository.fetchOrders();
      } catch (e) {
        emit(const OrderError("Failed to load orders"));
      }
    });

    on<ServiceTablesUpdated>((event, emit) async {
      emit(ServiceTableLoaded(event.tables));
    });

    on<AddOrder>((event, emit) async {
      emit(const OrdersLoading());
      try {
        await orderRepository.insertOrder(event.orders);
      } catch (e) {
        //emit(const OrderError("Failed to add orders"));
        print(e.toString());
      }
    });

    // on<UpdateOrder>((event, emit) async {
    //   await orderRepository.updateOrder(event.order);
    //   // No need to fetch orders again here, as the stream will handle it
    // });
    //
    // on<DeleteOrder>((event, emit) async {
    //   await orderRepository.deleteOrder(event.orderId);
    // });
  }
}
