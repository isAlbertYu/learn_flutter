import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        RaisedButton(
          color: Colors.orange,
          child: Text("表单演示页面"),
          onPressed: () {
            //路由跳转,命名路由
            Navigator.pushNamed(context, "/textField");
          },
        ),
        RaisedButton(
          color: Colors.orange,
          child: Text("CheckBox"),
          onPressed: () {
            //路由跳转,命名路由
            Navigator.pushNamed(context, "/checkBox");
          },
        ),
        RaisedButton(
          color: Colors.orange,
          child: Text("RadioDemo"),
          onPressed: () {
            //路由跳转,命名路由
            Navigator.pushNamed(context, "/radio");
          },
        ),
        SizedBox(width: 20),
        RaisedButton(
          child: Text('学员登记系统'),
          onPressed: (){
            Navigator.pushNamed(context, '/form');
          },
        )
      ],
    );
  }
}
