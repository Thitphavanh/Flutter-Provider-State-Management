import 'package:flutter_provider/models/product.dart';

class Order {
  Product? product;
  int quantity = 1;
  double? price;
  Order({
    this.product,
    required this.quantity,
    this.price,
  });
}
