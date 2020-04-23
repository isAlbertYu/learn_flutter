import 'package:flutter/material.dart';

class Tabs extends StatefulWidget {
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("首页页面"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text("Dialog"),
                onPressed: () {
                  Navigator.pushNamed(context, "/dialogPage");
                },
              ),
              SizedBox(
                width: 100,
              ),
              RaisedButton(
                child: Text("轮播图页面2"),
                onPressed: () {
                  Navigator.pushNamed(context, "/swiperPage02");
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
