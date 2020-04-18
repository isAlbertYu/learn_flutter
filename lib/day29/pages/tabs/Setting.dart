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
          title: Text("Flutter仿京东商城项目实战视频教程"),
        ),
        ListTile(
          title: Text("那些公有软件"),
        ),
        ListTile(
          title: Text("巡游美国”充当其他卖主的代理商，它对任何延误不承担责任。"),
        ),
      ],
    );
  }
}

