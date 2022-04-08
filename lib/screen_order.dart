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
      body: Column(
        children: [
          Expanded(
            child: ListView(
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
          ),
          Container(
            height: 100,
            color: Colors.blue.withOpacity(.2),
            child: ListTile(
              title: Align(
                child: Text(
                  'Total Amount : ${order.getTotal()}',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade500,
                  ),
                ),
                alignment: Alignment.centerRight,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
