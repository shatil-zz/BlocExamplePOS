// lib/utils/database_helper.dart
import 'dart:async';
import 'package:injectable/injectable.dart';
import 'package:sample_pos/feature/model/order_model.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

@singleton
@injectable
class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();

  factory DatabaseHelper() => _instance;

  DatabaseHelper._internal();

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'pos.db');
    return await openDatabase(path, version: 1, onCreate: (db, version) {
      // Create orders table
      db.execute('''
      CREATE TABLE orders (
        orderId INTEGER PRIMARY KEY AUTOINCREMENT,
        tableId INTEGER,
        menuName TEXT,
        orderTime TEXT,
        isPaid INTEGER,
        isCanceled INTEGER,
        isCompleted INTEGER,
        count INTEGER,
        price DOUBLE
      )
      ''');
    });
  }

  // Method to add order
  Future<void> insertOrUpdateOrder(List<OrderModel> orders) async {
    final db = await database;
    Batch batch = db.batch();
    for (var order in orders) {
      if (order.orderId == null) {
        batch.insert('orders', order.toMap());
      } else {
        batch.update('orders', order.toMap());
      }
    }
    await batch.commit(noResult: true);
  }

  // Fetch all orders and add to the stream
  Future<List<Map<String, dynamic>>> fetchOrders() async {
    final db = await database;
    return db.query('orders');
  }
}
