import 'package:flutter/material.dart';
import 'dart:async';

class MyDialog extends Dialog {
  String title;
  String content;

  MyDialog({this.title, this.content});

  _showTimer(context) {
    var timer;
    timer = Timer.periodic(
      Duration(seconds: 3),
      (t) {
        print("关闭");
        Navigator.pop(context);
        t.cancel();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    _showTimer(context);
    return Material(
      type: MaterialType.transparency,
      child: Center(
        child: Container(
          height: 300,
          width: 300,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10),
                child: Stack(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.center,
                      child: Text("${this.title}"),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        child: Icon(Icons.close),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 3,
              ),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                height: 200,
                width: double.infinity,
                color: Colors.blue,
                child: Text(
                  "${this.content}",
                  textAlign: TextAlign.left,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
