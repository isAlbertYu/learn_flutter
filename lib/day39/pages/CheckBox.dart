import 'package:flutter/material.dart';

class CheckBoxDemo extends StatefulWidget {
  @override
  _CheckBoxDemoState createState() => _CheckBoxDemoState();
}

class _CheckBoxDemoState extends State<CheckBoxDemo> {
  bool _flagCheckbox1 = true;
  bool _flagCheckbox2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("checkbox"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Checkbox(
                value: this._flagCheckbox1,
                activeColor: Colors.blue,
                onChanged: (v) {
                  //当状态改变时，传入当前状态值value
                  setState(() {
                    this._flagCheckbox1 = v;
                  });
                },
              )
            ],
          ),
          Row(
            children: <Widget>[
              Text(this._flagCheckbox1 ? "选中" : "未选中"),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          CheckboxListTile(
            value: this._flagCheckbox2,
            title: Text("标题"),
            subtitle: Text("二级标题"),
            secondary: Icon(Icons.help),
            onChanged: (v) {
              setState(() {
                this._flagCheckbox2 = v;
              });
            },
          ),
          Divider(thickness: 3,),
        ],
      ),
    );
  }
}
