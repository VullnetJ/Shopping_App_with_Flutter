import 'package:flutter/material.dart';
import 'tree.dart';
import 'e_commerce_b.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.green,
      ),
      home: ECommerceScreen(),
    );
  }
}
