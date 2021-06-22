import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({ key }) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      body: new Center(
        child: new Text("This is Shopping Cart Page")
      ),
      
      
    );
  }
}