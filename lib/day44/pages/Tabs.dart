import 'package:flutter/material.dart';
import '../components/MyDialog.dart';
import '../components/TimingDialog.dart';

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
                child: Text("MyDialog"),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return MyDialog(
                        title: "哈哈哈哈",
                        content: "我是内容",
                      );
                    },
                  );
                },
              ),
              SizedBox(
                width: 100,
              ),
              RaisedButton(
                child: Text("TimingDialog"),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return TimingDialog(
                        title: "哈哈哈哈",
                        content: "我是内容",
                      );
                    },
                  );
                },
              ),
              RaisedButton(
                child: Text("Test"),
                onPressed: () {
                  Navigator.pushNamed(context, "/test");
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
