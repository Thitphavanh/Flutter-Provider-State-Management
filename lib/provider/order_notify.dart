import 'package:flutter/cupertino.dart';
import 'package:flutter_provider/models/order.dart';

class OrderNotify extends ChangeNotifier {
  List<Order> items = [];

  void addOrder(Order order) {
    // this.items.add(order);
    final i = items.indexWhere((e) => e.product == order.product);
    if (i > -1) {
      items[i].quantity += order.quantity;
    } else {
      this.items.add(order);
    }
    notifyListeners();
  }

  removeOrder(o) {
    items.remove(o);
    notifyListeners();
  }

  decrementQty(order) {
    final i = items.indexWhere((e) => e.product == order.product);
    if (items[i].quantity == 1) {
      removeOrder(order);
    } else {
      items[i].quantity -= 1;
      notifyListeners();
    }
  }

  incrementQty(order) {
    items[items.indexOf(order)].quantity += 1;
    notifyListeners();
  }

  double getTotal() {
    double sum = 0;
    this.items.forEach((e) {
      sum += (e.price! * e.quantity);
    });
    return sum;
  }
}
