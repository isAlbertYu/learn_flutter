import 'package:flutter/material.dart';
import '../Tabs.dart';

class RegisterThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("第三步-完成注册"),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(height: 40),
          Text("输入密码完成注册"),
          SizedBox(height: 40),
          RaisedButton(
            child: Text("确定"),
            onPressed: () {
              //返回根
              Navigator.of(context).pop();
//              Navigator.pushAndRemoveUntil(
//                context,
//                new MaterialPageRoute(builder: (context) => new Tabs()),
//                (route) => route == null,
//              );
            },
          ),
        ],
      ),
    );
  }
}
