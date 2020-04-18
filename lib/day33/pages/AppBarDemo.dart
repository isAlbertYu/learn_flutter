import 'package:flutter/material.dart';

class AppBarDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("AppBarDemoPage"),
          centerTitle: true,
          bottom: TabBar(
            tabs: <Widget>[
              Tab(text: "热门"),
              Tab(text: "推荐"),
            ],
          ),
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              print("点击了menu");
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                print("点击了search");
              },
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {
                print("点击了settings");
              },
            ),
          ],
        ),
        body: TabBarView(children: <Widget>[
          ListView(
            children: <Widget>[
              ListTile(
                  title:Text("第一个tab")
              ),
              ListTile(
                  title:Text("第一个tab")
              ),
              ListTile(
                  title:Text("第一个tab")
              )
            ],
          ),
          ListView(
            children: <Widget>[
              ListTile(
                  title:Text("第二个tab")
              ),
              ListTile(
                  title:Text("第二个tab")
              ),
              ListTile(
                  title:Text("第二个tab")
              )
            ],
          ),
        ],),
      ),
    );
  }
}
