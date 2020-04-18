import 'package:flutter/material.dart';
import 'tabs/Home.dart' show HomePage;
import 'tabs/Setting.dart' show SettingPage;
import 'tabs/Category.dart' show CategoryPage;

//Tabs: App的首页页面布局
//含有appbar和底部导航栏
//凡是页面布局，需含Scaffold组件
class Tabs extends StatefulWidget {
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  int _currentIndex = 0;
  List _list = [
    HomePage(),
    CategoryPage(),
    SettingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter demo"),
      ),
      body: this._list[this._currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: this._currentIndex,
        onTap: (int index) {
          setState(() {
            this._currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("首页"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text("分类"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text("设置"),
          ),
        ],
        selectedIconTheme: IconThemeData(
          color: Colors.green,
          size: 50,
        ),
        unselectedIconTheme: IconThemeData(
          color: Colors.red,
          size: 30,
        ),
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
