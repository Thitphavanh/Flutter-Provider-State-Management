import 'package:flutter/material.dart';
import 'package:flutter_provider/product_page.dart';
import 'package:flutter_provider/provider/order_notify.dart';
import 'package:flutter_provider/ui/order_card.dart';
import 'package:provider/provider.dart';

class ScreenOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final order = Provider.of<OrderNotify>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('My Order'),
        actions: [
          Text(
            order.items.length.toString(),
          ),
        ],
      ),
      body: ListView(
        children: order.items
            .map(
              (e) => Dismissible(
                direction: DismissDirection.endToStart,
                onDismissed: (dir) {
                  order.removeOrder(e);
                },
                background: Container(
                  color: Colors.red.shade400,
                  padding: EdgeInsets.only(right: 8),
                  child: Align(
                    child: Icon(
                      Icons.delete,
                      color: Colors.white,
                    ),
                    alignment: Alignment.centerRight,
                  ),
                ),
                key: Key(UniqueKey().toString()),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: OrderCard(e),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
