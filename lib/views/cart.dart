import 'package:flutter/material.dart';

class Cart extends StatefulWidget{
  const Cart({super.key});
  @override
  State<StatefulWidget> createState() => _cartState();
}

class _cartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('购物车'),);
  }
}