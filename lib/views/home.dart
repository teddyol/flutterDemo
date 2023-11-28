import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  const Home({super.key});
  @override
  State<StatefulWidget> createState() => _homeState();
}

class _homeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('家'),);
  }
}