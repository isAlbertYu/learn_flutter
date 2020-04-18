import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          color: Colors.blue,
          child: Text("跳转到表单页面"),
          onPressed: () {
            //路由跳转,命名路由
            Navigator.pushNamed(context, "/search");
          },
        ),
      ],
    );
  }
}
