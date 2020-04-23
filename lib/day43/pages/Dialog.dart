import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DialogPage extends StatefulWidget {
  @override
  _DialogPageState createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
  void _alertDialog() async {
    var res = await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("提示信息"),
          content: Text("确定要删除吗？"),
          actions: <Widget>[
            FlatButton(
              onPressed: () {
                print("取消");
                Navigator.pop(context, "pop取消");
              },
              child: Text("取消"),
            ),
            FlatButton(
              onPressed: () {
                print("确定");
                Navigator.pop(context, "pop确定");
              },
              child: Text("确定"),
            ),
          ],
        );
      },
    );
    print("res: ${res}");
  }

  void _simpleDialog() async {
    showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          title: Text("选择内容"),
          children: <Widget>[
            SimpleDialogOption(
              child: Text("选项 A"),
              onPressed: () {
                print("选项 A");
              },
            ),
            SimpleDialogOption(
              child: Text("选项 B"),
              onPressed: () {
                print("选项 B");
              },
            ),
            SimpleDialogOption(
              child: Text("选项 C"),
              onPressed: () {
                print("选项 C");
              },
            ),
          ],
        );
      },
    );
  }

  void _simpleDialog2() async {
    showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          title: Text("选择内容"),
          children: <Widget>[
            ListTile(
              title: Text("选项 A"),
              onTap: () {
                print("选项 A");
              },
            ),
            ListTile(
              title: Text("选项 B"),
              onTap: () {
                print("选项 B");
              },
            ),
            ListTile(
              title: Text("选项 C"),
              onTap: () {
                print("选项 C");
              },
            ),
          ],
        );
      },
    );
  }

  _modelBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: 200,
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("分享 A"),
                onTap: () {
                  print("分享 A");
                },
              ),
              ListTile(
                title: Text("分享 B"),
                onTap: () {
                  print("分享 B");
                },
              ),
              ListTile(
                title: Text("分享 C"),
                onTap: () {
                  print("分享 C");
                },
              ),
            ],
          ),
        );
      },
    );
  }

  _toast() {
    Fluttertoast.showToast(
      msg: "This is Center Short Toast",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("轮播图测试页面"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("alert弹出框-AlertDialog"),
              onPressed: _alertDialog,
            ),
            SizedBox(
              height: 30,
            ),
            RaisedButton(
              child: Text("select弹出框-SimpleDialog"),
              onPressed: _simpleDialog,
            ),
            SizedBox(
              height: 30,
            ),
            RaisedButton(
              child: Text("select弹出框-SimpleDialog2"),
              onPressed: _simpleDialog2,
            ),
            SizedBox(
              height: 30,
            ),
            RaisedButton(
              child: Text("ActionSheet弹出框-showModalBottomSheet"),
              onPressed: _modelBottomSheet,
            ),
            SizedBox(
              height: 30,
            ),
            RaisedButton(
              child: Text("Toast"),
              onPressed: _toast,
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
