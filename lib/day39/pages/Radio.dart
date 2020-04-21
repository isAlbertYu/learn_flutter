import 'package:flutter/material.dart';

class RadioDemo extends StatefulWidget {
  @override
  _RadioDemoState createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {
  int _sex = 1;
  int _have = 1;
  bool _flag = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text("男："),
                Radio(
                  value: 1, //不变
                  groupValue: this._sex, //可变
                  onChanged: (v) {
                    setState(() {
                      this._sex = v;
                    });
                  },
                ),
                SizedBox(width: 20),
                Text("女："),
                Radio(
                  value: 2, //不变
                  groupValue: this._sex, //可变
                  onChanged: (v) {
                    setState(() {
                      this._sex = v;
                    });
                  },
                )
              ],
            ),
            Row(
              children: <Widget>[
                Text("${this._sex}"),
                Text(this._sex == 1 ? "男" : "女"),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            RadioListTile(
              value: 1,
              groupValue: this._have,
              title: Text("标题"),
              subtitle: Text("二级标题"),
              secondary: Icon(Icons.help),
              selected: this._have == 1,
              onChanged: (v) {
                setState(() {
                  this._have = v;
                });
              },
            ),
            RadioListTile(
              value: 2,
              groupValue: this._have,
              title: Text("标题"),
              subtitle: Text("二级标题"),
              secondary:
                  Image.network("https://www.itying.com/images/flutter/1.png"),
              selected: this._have == 2,
              onChanged: (v) {
                setState(() {
                  this._have = v;
                });
              },
            ),
            SizedBox(
              height: 40,
            ),
            Switch(
              value: this._flag,
              onChanged: (v) {
                setState(() {
                  print(v);
                  this._flag = v;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
