import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_pos/feature/bloc/order/order_bloc.dart';
import 'package:sample_pos/feature/bloc/order/order_event.dart';
import 'package:sample_pos/feature/bloc/order/order_state.dart';
import 'package:sample_pos/feature/model/order_model.dart';
import 'package:sample_pos/feature/model/service_table_model.dart';

class OrderListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    BlocProvider.of<OrderBloc>(context).add(const OrderEvent.loadOrders());
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Order List',
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: BlocBuilder<OrderBloc, OrderState>(
        builder: (context, state) {
          return state.when(initial: () {
            return const SizedBox();
          }, loading: () {
            return SizedBox(
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height,
              child: const Center(
                  child: SizedBox(
                      width: 40,
                      height: 40,
                      child: CircularProgressIndicator())),
            );
          }, loaded: (serviceTableMap) {
            List<ServiceTableModel> serviceTables =
                sortServiceTablesByLastOrderTime(serviceTableMap);
            if (serviceTables.isEmpty) {
              return SizedBox(
                  width: MediaQuery.sizeOf(context).width,
                  height: MediaQuery.sizeOf(context).height,
                  child: const Center(
                    child: Text("No order found",
                        style: TextStyle(
                          color: Colors.redAccent,
                        )),
                  ));
            }
            return ListView.builder(
              itemCount: serviceTables.length,
              itemBuilder: (context, index) {
                final table = serviceTables[index];
                double payment = 0;
                for (OrderModel order in table.orders) {
                  payment += order.price * order.count;
                }
                DateTime date =
                    DateTime.fromMillisecondsSinceEpoch(table.lastOrderTime);
                return Card(
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('#${table.tableId} (dine in)',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold)),
                            Text('${table.tableName} Default Room',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue)),
                          ],
                        ),
                        const Text('Any Client',
                            style: TextStyle(fontSize: 14)),
                        Text(
                            'Left to pay\$ ${payment.toStringAsFixed(2)} of total ${payment.toStringAsFixed(2)}\$',
                            style:
                                const TextStyle(fontWeight: FontWeight.bold)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('${date.hour}:${date.minute}',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold)),
                            const Text('Shahanur',
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        const SizedBox(height: 10),
                        ...table.orders.map((order) {
                          return Text('${order.count} * ${order.menuName}');
                        }).toList(),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                                onPressed: () {}, child: const Text('Info')),
                            TextButton(
                                onPressed: () {}, child: const Text('Pay')),
                            TextButton(
                                onPressed: () {}, child: const Text('Print')),
                            TextButton(
                                onPressed: () {}, child: const Text('Void')),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          }, error: (message) {
            return Center(
              child: Text(
                message,
                style: const TextStyle(color: Colors.redAccent),
              ),
            );
          });
        },
      ),
    );
  }

  // Function to sort service tables by last order time
  List<ServiceTableModel> sortServiceTablesByLastOrderTime(
      Map<int, ServiceTableModel> serviceTablesMap) {
    // Extract the values from the map into a list
    List<ServiceTableModel> serviceTablesList = serviceTablesMap.values.toList();

    // Sort the list based on lastOrderTime
    serviceTablesList
        .sort((a, b) => a.lastOrderTime.compareTo(b.lastOrderTime));

    return serviceTablesList;
  }
}
