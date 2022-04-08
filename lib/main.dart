import 'package:flutter/material.dart';
import 'package:flutter_provider/provider/order_notify.dart';
import 'package:provider/provider.dart';
import 'product_page.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => OrderNotify(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Book Shop',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: ProductPage(),
    );
  }
}
