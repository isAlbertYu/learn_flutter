import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          color: Colors.orange,
          child: Text("跳转到表单页面"),
          onPressed: () {
            //路由跳转,命名路由
            Navigator.pushNamed(context, "/form");
          },
        ),
      ],
    );
  }
}
