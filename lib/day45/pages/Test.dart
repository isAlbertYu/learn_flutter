import 'package:dio/dio.dart';
import 'dart:convert';
import 'package:flutter/material.dart';

class Countdown extends StatefulWidget {
  @override
  _CountdownState createState() => _CountdownState();
}

class _CountdownState extends State<Countdown> {
  List _list = [];

  _getData() async {
    String apiURL =
        "http://www.phonegap100.com/appapi.php?a=getPortalList&catid=20&page=1";
    Response resp = await Dio().get(apiURL);
    setState(() {
      this._list = json.decode(resp.data)["result"]; //json.decode:String->Map
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this._getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("定时器演示"),
      ),
      body: this._list.length > 0
          ? ListView(
              children: this._list.map(
                (v) {
                  return ListTile(
                    title: Text(v["title"]),
                  );
                },
              ).toList(),
            )
          : loading(),
    );
  }
}

class loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("加载中..."),
    );
  }
}
