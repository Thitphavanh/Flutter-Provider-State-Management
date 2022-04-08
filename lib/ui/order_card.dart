import 'package:flutter/material.dart';
import 'package:flutter_provider/models/order.dart';
import 'package:flutter_provider/provider/order_notify.dart';
import 'package:provider/provider.dart';

class OrderCard extends StatelessWidget {
  Order order;

  OrderCard(this.order);

  @override
  Widget build(BuildContext context) {
    final po = Provider.of<OrderNotify>(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.network(
          order.product!.image,
          width: 90,
          height: 90,
          fit: BoxFit.cover,
        ),
        SizedBox(width: 10.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                order.product!.name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Text(order.product!.desc),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 60,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        po.decrementQty(order);
                      },
                      icon: Icon(Icons.remove),
                      label: Text(''),
                    ),
                  ),
                  Container(
                    width: 40,
                    child: Text(
                      order.quantity.toString(),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  ElevatedButton(
                    child: Icon(Icons.plus_one),
                    onPressed: () {
                      po.incrementQty(order);
                    },
                  ),
                  Expanded(
                    child: Text(
                      '' + (order.quantity * order.price!).toString(),
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.grey.shade600),
                      textAlign: TextAlign.right,
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
