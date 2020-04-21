import 'package:flutter/material.dart';
// import 'res/listData.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
          appBar: AppBar(title: Text('FlutterDemo')),
          body: LayoutDemo(),
        ));
  }
}

class LayoutDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("张三", style: TextStyle(fontSize: 28),),
                subtitle: Text("高级工程师"),
              ),
              ListTile(
                title: Text("电话: 123456789",),
              ),
              ListTile(
                title: Text("地址: xxx",),
              ),
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("李四", style: TextStyle(fontSize: 28),),
                subtitle: Text("中级工程师"),
              ),
              ListTile(
                title: Text("电话: 123456789",),
              ),
              ListTile(
                title: Text("地址: xxx",),
              ),
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("王五", style: TextStyle(fontSize: 28),),
                subtitle: Text("初级工程师"),
              ),
              ListTile(
                title: Text("电话: 123456789",),
              ),
              ListTile(
                title: Text("地址: xxx",),
              ),
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("赵六", style: TextStyle(fontSize: 28),),
                subtitle: Text("中级工程师"),
              ),
              ListTile(
                title: Text("电话: 000000",),
              ),
              ListTile(
                title: Text("地址: xxx",),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
