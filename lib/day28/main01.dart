import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("flutter demo"),
        ),
        body: Homepage(),
      ),
    );
  }
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<String> list = List();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(30), //整个ListView的内边距
      children: <Widget>[
        RaisedButton(
          child: Text("按钮"),
          onPressed: () {
            setState(() {
              this.list.add("新增数据1");
              this.list.add("新增数据2");
            });
            if (list.length >= 12) {
              list.removeRange(0, list.length);
            }
          },
        ),
        Column(
          children: this.list.map((value) {
            return ListTile(
              title: Text(value),
            );
          }).toList(),
        ),
      ],
    );
  }
}
