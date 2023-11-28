import 'package:flutter/material.dart';

class Page3 extends StatefulWidget{
  const Page3({super.key, required this.data_from_page1});
  final String data_from_page1;
  @override
  State<StatefulWidget> createState() => _Page3State();
}

class _Page3State extends State<Page3>{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('page3页面初始化');
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.data_from_page1),
      ),
      body: ElevatedButton(
        child: const Text('有状态的StatefulWidget'),
        onPressed: () {},
      ),
    );
  }

}