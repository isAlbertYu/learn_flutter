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
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: UserAccountsDrawerHeader(
                    accountName: Text("哈哈哈"),
                    accountEmail: Text("123456@qq.com"),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: AssetImage('assets/111.png'),
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://www.itying.com/images/flutter/2.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    otherAccountsPictures: <Widget>[
                      Image.network(
                          "https://www.itying.com/images/flutter/4.png"),
                      Image.network(
                          "https://www.itying.com/images/flutter/5.png"),
                    ],
                  ),
                ),
              ],
            ),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.home),
              ),
              title: Text("我的空间"),
            ),
            Divider(thickness: 3),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.people),
              ),
              title: Text("用户中心"),
              onTap: () {
                print("aaaaass");
                Navigator.pop(context);
                Navigator.pushNamed(context, "/user");
              },
            ),
            Divider(thickness: 3),
            ListTile(
              leading: CircleAvatar(
                child: Icon(Icons.settings),
              ),
              title: Text("设置中心"),
            ),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: Text("右边侧边栏"),
      ),
    );
  }
}
