import 'package:flutter/material.dart';

class TextFieldDemoPage extends StatefulWidget {
  @override
  _TextFieldDemoPageState createState() => _TextFieldDemoPageState();
}

class _TextFieldDemoPageState extends State<TextFieldDemoPage> {
  var _usernameController = TextEditingController();
  var _password;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this._usernameController.text = "初始值";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("表单演示页面"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: "请输入用户名",
              ),
              controller: _usernameController,
              onChanged: (value) {
                setState(() {
                  this._usernameController.text = value;
                });
              },
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: "密码",
              ),
              onChanged: (value) {
                setState(() {
                  this._password = value;
                });
              },
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: double.infinity,
              height: 50,
              child: RaisedButton(
                child: Text("登录"),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () {
                  print(this._usernameController.text);
                  print(this._password);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
