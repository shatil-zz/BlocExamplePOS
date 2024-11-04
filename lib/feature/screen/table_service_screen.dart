import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_pos/feature/bloc/order/order_bloc.dart';
import 'package:sample_pos/feature/bloc/order/order_event.dart';
import 'package:sample_pos/feature/bloc/order/order_state.dart';
import 'package:sample_pos/feature/screen/create_order_screen.dart';
import 'package:sample_pos/feature/screen/order_list_screen.dart';
import 'package:sample_pos/feature/screen/table_card_widget.dart';
import 'package:sample_pos/utils/constants.dart';

class TableServiceScreen extends StatelessWidget {
  const TableServiceScreen();

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<OrderBloc>(context).add(const OrderEvent.loadOrders());
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Table Service',
          style: TextStyle(fontSize: 20),
        ),
        centerTitle: true,
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
          }, loaded: (serviceTables) {
            return GridView.builder(
              padding: const EdgeInsets.only(bottom: 100, left: 20, right: 20),
              physics: const BouncingScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, // Adjust the number of columns as needed
                childAspectRatio: .8, // Adjust the aspect ratio for cards
              ),
              itemCount: tables.length,
              // Use the constant for the number of tables
              itemBuilder: (context, index) {
                final table = tables[index];
                int count = 0;
                if (serviceTables.containsKey(table['id'])) {
                  count = serviceTables[table['id']]!.orders.length;
                }
                // Assuming you have a table list from your constants
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              MenuSelectionScreen(table['id'] ?? 0)),
                    );
                  },
                  child: TableCardWidget(
                    tableName: table['name'],
                    itemsOrdered: count,
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
      floatingActionButton: MaterialButton(
        color: Colors.blue,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => OrderListScreen()),
          );
        },
        child: const Text("View Ordered List"),
      ),
    );
  }
}
