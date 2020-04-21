import 'package:flutter/material.dart';

class FormDemoPage extends StatefulWidget {
  @override
  _FormDemoPageState createState() => _FormDemoPageState();
}

class _FormDemoPageState extends State<FormDemoPage> {
  String _username;
  int _sex = 1;
  String _info = "";

  List _hobby = [
    {"checked": true, "title": "吃饭"},
    {"checked": false, "title": "睡觉"},
    {"checked": true, "title": "写代码"},
  ];

  List<Widget> _getHobby() {
    List<Widget> tempList = [];
    for (int i = 0; i < this._hobby.length; i++) {
      tempList.add(Row(
        children: <Widget>[
          Text(this._hobby[i]["title"] + ":"),
          Checkbox(
            value: this._hobby[i]["checked"],
            onChanged: (v) {
              setState(() {
                this._hobby[i]["checked"] = v;
              });
            },
          )
        ],
      ));
    }
    return tempList;
  }

  void _sexChanged(value) {
    setState(() {
      this._sex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        title: Text("学员信息登记系统"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                hintText: "输入用户信息",
              ),
              onChanged: (v) {
                setState(() {
                  this._username = v;
                });
              },
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Text("男"),
                Radio(
                  value: 1,
                  groupValue: this._sex,
                  onChanged: this._sexChanged,
                ),
                SizedBox(
                  width: 20,
                ),
                Text("女s"),
                Radio(
                  value: 2,
                  groupValue: this._sex,
                  onChanged: this._sexChanged,
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Column(
              children: this._getHobby(),
            ),
            TextField(
              maxLines: 5,
              decoration: InputDecoration(
                hintText: "描述信息",
                border: OutlineInputBorder(),
              ),
              onChanged: (v) {
                setState(() {
                  this._info = v;
                });
              },
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 100,
              child: RaisedButton(
                child: Text("提交信息"),
                onPressed: () {
                  print("${this._sex}+${this._username}+${this._hobby}+${this._info}");
                },
                color: Colors.blue,
                textColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
