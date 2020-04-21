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
    return ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        Card(
          margin: EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 20 / 9,
                child: Image.network(
                  "https://www.itying.com/images/flutter/1.png",
                  fit: BoxFit.contain,
                ),
              ),
              ListTile(
                leading: Container(
                  height: 50,
                  width: 50,
                  color: Colors.blue,
                  child:ClipOval(
                    child: Image.network(
                      "https://www.itying.com/images/flutter/1.png",
                      fit: BoxFit.cover,
                      height: 60,
                      width: 55,
                    ),
                  ),
                ),
                title: Text("xxxx"),
                subtitle: Text("xxxxxxxxxxxxxxxxx"),
              ),
            ],
          ),
        ),
        Card(
          margin: EdgeInsets.all(10),
          child: Column(children: <Widget>[
            AspectRatio(
              aspectRatio: 20 / 9,
              child: Image.network(
                "https://www.itying.com/images/flutter/2.png",
                fit: BoxFit.contain,
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                radius: 20,
                backgroundImage:
                    NetworkImage("https://www.itying.com/images/flutter/2.png"),
              ),
              title: Text("xxxxxxxx"),
              subtitle: Text("xxxxxxxxxxxxxxxxxxxxxx"),
            ),
          ]),
        )
      ],
    );
  }
}
