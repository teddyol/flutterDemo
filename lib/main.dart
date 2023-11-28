import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:demo1/page2.dart';
import 'package:demo1/page3.dart';
import 'package:demo1/views/home.dart';
import 'package:demo1/views/cart.dart';
import 'package:demo1/views/person.dart';

void main() {
  runApp(const MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // 请求
  void getHttp() async {
    Dio dio = Dio();
    var response = await dio.get(
        'https://eip.guangzhi-opto.com/api/gzapp/structure/getGzStructure');
    print(response.data.toString());
  }

  List pages = [Home(), Cart(), Person()];
  List<BottomNavigationBarItem> bottomTabs = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.message),
      label: 'Messages',
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'Profile',
    ),
  ];
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    // setState 方法通常只能在 StatefulWidget 中使用
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // 去掉debug图标
      title: 'were',
      home: Scaffold(
          appBar: AppBar(
            title: Text(_selectedIndex.toString()),
            backgroundColor: Colors.deepPurple,
            centerTitle: true,
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            ],
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                const DrawerHeader(
                  decoration: BoxDecoration(color: Colors.deepPurple),
                  child: Text('内容介绍'),
                ),
                ListTile(
                  title: const Text('用户设置'),
                  trailing: const Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    print('点击了');
                  },
                ),
                ListTile(
                  title: const Text('用户设置'),
                  trailing: const Icon(Icons.keyboard_arrow_right),
                  onTap: () {
                    print('点击了');
                  },
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.add),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          // body: Center(
          //   child: Column(
          //     children: [
          //       ElevatedButton(
          //         child: const Text('请求点我'),
          //         onPressed: () {
          //           getHttp();
          //         },
          //       ),
          //       ElevatedButton(
          //         child: const Text('跳转点我'),
          //         onPressed: () {
          //           Navigator.push(
          //               context,
          //               MaterialPageRoute(
          //                   builder: (_) =>
          //                       const Page2(data_from_page1: 'page1传值到page2')));
          //         },
          //       ),
          //       ElevatedButton(
          //         child: const Text('跳转点我'),
          //         onPressed: () {
          //           Navigator.push(
          //               context,
          //               MaterialPageRoute(
          //                   builder: (_) => const Page3(
          //                         data_from_page1: 'page1传值到page3',
          //                       )));
          //         },
          //       ),
          //     ],
          //   ),
          // ),
          body: pages[_selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            items: bottomTabs,
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
          )),
    );
  }
}
