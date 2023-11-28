import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key, required this.data_from_page1});
  final String data_from_page1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(data_from_page1),
      ),
      body: ElevatedButton(
        child: const Text('跳回'),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
