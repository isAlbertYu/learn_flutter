import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text("我是一个文本"),
        ),
        ListTile(
          title: Text("我是一个文本"),
        ),
        ListTile(
          title: Text("我是一个文本"),
        ),
        ListTile(
          title: Text("我是一个文本"),
        ),
        RaisedButton(
          color: Colors.blue,
          child: Text("跳转到搜索页面"),
          onPressed: () {
            Navigator.of(context).pop();
            //路由跳转,命名路由
            Navigator.pushNamed(
              context,
              "/search",
              arguments: {"id": 123},
            );
          },
        ),
      ],
    );
  }
}
