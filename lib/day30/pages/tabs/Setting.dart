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
          title: Text("aaaaa"),
          subtitle: Text("AAAAAAAAAAAAAAAAAAAAAAAAAA"),
        ),
        ListTile(
          title: Text("bbbbb"),
          subtitle: Text("BBBBBBBBBBBBBBBBBBBBBBBBBBB"),
        ),
        ListTile(
          title: Text("ccccc"),
          subtitle: Text("CCCCCCCCCCCCCCCCCCCCCCCCCCCC"),
        ),
      ],
    );
  }
}
