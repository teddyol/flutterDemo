import 'package:flutter/material.dart';

class Person extends StatefulWidget{
  const Person({super.key});
  @override
  State<StatefulWidget> createState() => _personState();
}

class _personState extends State<Person> {
  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('个人'),);
  }
}