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
      child: Container(
        height: 300,
        width: 300,
        color: Colors.green,
        child: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment(0, 0),
              child: Icon(Icons.home, size: 50, color: Colors.white,),
            ),
            Align(
              alignment: Alignment(1, 1),
              child: Icon(Icons.search, size: 50, color: Colors.white,),
            ),
            Align(
              alignment: Alignment(1, 0),
              child: Icon(Icons.select_all, size: 50, color: Colors.white,),
            ),
          ],
        ),
      ),
    );
  }
}
