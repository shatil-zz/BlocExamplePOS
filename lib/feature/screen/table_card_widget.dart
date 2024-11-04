// lib/widgets/table_card.dart
import 'package:flutter/material.dart';

class TableCardWidget extends StatelessWidget {
  final String tableName;
  final int itemsOrdered;

  const TableCardWidget({
    required this.tableName,
    required this.itemsOrdered,
  });

  @override
  Widget build(BuildContext context) {
    Color lineColor = itemsOrdered > 0 ? Colors.red : Colors.green;

    return Card(
      margin: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          Text(
            tableName,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          itemsOrdered > 0 ? const Text("Shahanur") : Container(),
          const SizedBox(height: 16),
          Container(
            width: MediaQuery.sizeOf(context).width/3,
            color: lineColor,
            child: Text('$itemsOrdered/4'),
          )
        ],
      ),
    );
  }
}
