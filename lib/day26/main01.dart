import 'package:flutter/material.dart';
// import 'res/listData.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('FlutterDemo')),
      body: LayoutDemo(),
    ));
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
        width: 300,
        color: Colors.black,
        child: AspectRatio(
          aspectRatio: 2/1,
          child: Container(
            height: 100,
            width: 500,
            color: Colors.green,
          ),
        ),
      ),
    );
  }
}
