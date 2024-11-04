class OrderModel {
  final int? orderId;
  final int tableId;
  final String menuName;
  final int orderTime;
  final bool isPaid;
  final bool isCanceled;
  final bool isCompleted;
  final int count;
  final double price;

  OrderModel(
      {this.orderId,
      required this.tableId,
      required this.menuName,
      required this.orderTime,
      required this.isPaid,
      required this.isCanceled,
      required this.isCompleted,
      required this.count,
      required this.price});

  Map<String, dynamic> toMap() {
    return {
      'orderId': orderId,
      'tableId': tableId,
      'menuName': menuName,
      'orderTime': orderTime,
      'isPaid': isPaid ? 1 : 0,
      'isCanceled': isCanceled ? 1 : 0,
      'isCompleted': isCompleted ? 1 : 0,
      'count': count,
      'price': price,
    };
  }

  factory OrderModel.fromMap(Map<String, dynamic> map) {
    print(map);
    return OrderModel(
      orderId: map['orderId'],
      tableId: map['tableId'],
      menuName: map['menuName'].toString(),
      orderTime: int.parse(map['orderTime'].toString()),
      isPaid: map['isPaid'] == 1,
      isCanceled: map['isCanceled'] == 1,
      isCompleted: map['isCompleted'] == 1,
      count: map['count'],
      price: map['price'],
    );
  }
}
