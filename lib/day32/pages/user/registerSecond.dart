import 'package:flutter/material.dart';

class RegisterSecondPage  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("第二步-验证码"),),
      body: Column(
        children: <Widget>[
          SizedBox(height: 40,),
          Text("输入验证码完成注册"),
          SizedBox(height: 40,),
          RaisedButton(
            child: Text("下一步"),
            onPressed: () {
              //替换路由
              Navigator.pushReplacementNamed(context, '/registerThird');
            },
          ),
        ],
      ),
    );
  }
}
