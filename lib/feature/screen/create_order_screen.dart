import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sample_pos/feature/bloc/order/order_bloc.dart';
import 'package:sample_pos/feature/bloc/order/order_event.dart';
import 'package:sample_pos/feature/model/order_model.dart';
import 'package:sample_pos/utils/constants.dart';

class MenuSelectionScreen extends StatefulWidget {
  final int tableId;

  const MenuSelectionScreen(this.tableId, {super.key});

  @override
  State createState() => _MenuSelectionScreenState();
}

class _MenuSelectionScreenState extends State<MenuSelectionScreen> {
  final List<Map<String, dynamic>> selectedItems = [];

  void addItem(String name, double price) {
    if (selectedItems.length < 4) {
      setState(() {
        selectedItems.add({"name": name, "price": price, "count": 1});
      });
    } else {
      // Optional: Show a message to the user if they exceed the limit
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('You can select a maximum of 4 items.')),
      );
    }
  }

  void incrementCount(int index) {
    setState(() {
      selectedItems[index]['count']++;
    });
  }

  void decrementCount(int index) {
    setState(() {
      if (selectedItems[index]['count'] > 1) {
        selectedItems[index]['count']--;
      } else {
        selectedItems.removeAt(index); // Remove item if count is zero
      }
    });
  }

  double getTotalPrice() {
    return selectedItems.fold(
        0, (total, item) => total + (item['price'] * item['count']));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Menu Items'),
      ),
      body: Column(
        children: [
          // Selected Items List
          Expanded(
            child: selectedItems.isEmpty
                ? const Center(
                  child: Text("No item selected",
                      style: TextStyle(
                        color: Colors.redAccent,
                      )),
                )
                : ListView.builder(
                    itemCount: selectedItems.length,
                    itemBuilder: (context, index) {
                      final item = selectedItems[index];
                      return ListTile(
                        title: Text(item['name']),
                        subtitle: Text('Price: \$${item['price']}'),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.remove),
                              onPressed: () => decrementCount(index),
                            ),
                            Text('${item['count']}'),
                            IconButton(
                              icon: const Icon(Icons.add),
                              onPressed: () => incrementCount(index),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
          ),
          const Divider(),
          // Total Price Display
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Total: \$${getTotalPrice().toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          // Menu Items Grid
          Expanded(
            flex: 2,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2,
              ),
              itemCount: menuItems.length,
              itemBuilder: (context, index) {
                final menuItem = menuItems[index];
                return Card(
                  child: InkWell(
                    onTap: () {
                      addItem(menuItem['name'], menuItem['price']);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(menuItem['name']),
                        Text('\$${menuItem['price']}'),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          // Confirm Button
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SizedBox(
              width: MediaQuery.sizeOf(context).width - 32,
              child: ElevatedButton(
                onPressed: () {
                  if (selectedItems.isNotEmpty) {
                    // For example, show a confirmation message
                    confirmOrder();
                  } else {
                    // Optionally notify the user to select items
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                          content: Text('Please select at least one item.')),
                    );
                  }
                },
                child: const Text('Confirm'),
              ),
            ),
          ),
        ],
      ),
    );
  }

  confirmOrder() {
    List<OrderModel> orders = [];
    int time = DateTime.now().millisecondsSinceEpoch;
    for (Map<String, dynamic> item in selectedItems) {
      orders.add(OrderModel(
          tableId: widget.tableId,
          menuName: item['name'] ?? '',
          orderTime: time,
          isPaid: false,
          isCanceled: false,
          isCompleted: false,
          count: item['count'],
          price: item['price']));
    }
    BlocProvider.of<OrderBloc>(context)
        .add(OrderEvent.addOrUpdateOrder(orders));
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Order confirmed!')),
    );
    // You might also want to navigate back or clear selections here
    Navigator.pop(context); // Example action: go back
  }
}
