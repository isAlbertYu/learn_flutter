import 'package:flutter/material.dart';
import 'dart:async';

class TimingDialog extends StatefulWidget {
  String title;
  String content;

  TimingDialog({this.title, this.content});

  @override
  _TimingDialogState createState() =>
      _TimingDialogState(title: this.title, content: this.content);
}

class _TimingDialogState extends State<TimingDialog> {
  String title;
  String content;
  int timeNum = 5;
  Timer _myTimer;

  _TimingDialogState({this.title, this.content});

  _startTimer() {
    _myTimer = Timer.periodic(
      Duration(seconds: 1),
      (t) {
        if (_myTimer.tick == 5) {
          _cancelTimer();
        }else{
          setState(() {
            this.timeNum--;
          });
        }
      },
    );
  }

  void _cancelTimer() {
    if (_myTimer != null) {
      _myTimer.cancel();
      _myTimer = null;
    }
  }

  @override
  void initState() {
    super.initState();
    print("调用 initState");
    _startTimer();
  }

  @override
  void dispose() {
    super.dispose();
    print("调用 dispose");
    _cancelTimer();
  }

  @override
  Widget build(BuildContext context) {
    print("调用 build _myTimer.tick:${_myTimer.tick} this.timeNum:${this.timeNum}");
    if(_myTimer.tick == 4) {
      Navigator.pop(context);
    }

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
                height: 100,
                width: double.infinity,
                color: Colors.blue,
                child: Text(
                  "${this.content}",
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                height: 100,
                width: double.infinity,
                color: Colors.blue,
                child: Text(
                  "${this.timeNum}秒后关闭",
                  textAlign: TextAlign.center,
                  textScaleFactor: 2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
