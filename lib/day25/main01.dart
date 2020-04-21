import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Flutter demo"),),
        body: LayoutDemo(),
      ),
    );
  }
}

class LayoutDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment(1, 1),
        children: <Widget>[
          Container(
            height: 400,
            width: 300,
            color: Colors.red,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.black,
          ),

          Text(
            "哈哈哈哈或",
            style: TextStyle(
              fontSize: 30,
              color: Colors.white
            ),
          )
        ],
      ),
    );
  }
}
