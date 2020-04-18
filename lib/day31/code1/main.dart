import 'package:flutter/material.dart';
import 'pages/Tabs.dart';
import 'pages/Form.dart';
import 'pages/Search.dart';


//code1演示命名路由，不传值
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Tabs(),
      routes: {
        "/form":(context) => FormPage(),
        "/search":(context) => SearchPage(),
      },
    );
  }
}
