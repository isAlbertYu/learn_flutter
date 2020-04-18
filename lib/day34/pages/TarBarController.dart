import 'package:flutter/material.dart';

class TabBarControllerPage extends StatefulWidget {
  @override
  _TabBarControllerPageState createState() {
    print("执行createState");
    return _TabBarControllerPageState();
  }
}

class _TabBarControllerPageState extends State<TabBarControllerPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  _TabBarControllerPageState() {
    print("执行构造方法");
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("执行initState");
    this._tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      print(_tabController.index);
    });
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print("执行didChangeDependencies");
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    print("执行build");
    return Scaffold(
      appBar: AppBar(
        title: Text("TabBarControllerPag"),
        bottom: TabBar(
          tabs: <Widget>[
            Tab(
              text: "热销",
            ),
            Tab(
              text: "推荐",
            ),
          ],
          controller: this._tabController,
        ),
      ),
      body: TabBarView(
        children: <Widget>[
          Center(
            child: Text("热销"),
          ),
          Center(
            child: Text("推荐"),
          ),
        ],
        controller: this._tabController,
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _tabController.dispose();
    print("执行dispose");
  }
}
