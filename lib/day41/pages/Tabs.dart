import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

class Tabs extends StatefulWidget {
  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var now = DateTime.now();
    print(now);
    print(now.millisecondsSinceEpoch);
    print(DateTime.fromMillisecondsSinceEpoch(now.millisecondsSinceEpoch));
    print(formatDate(now, [yyyy, "年", mm, "月", dd, "日"]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("时间测试页面"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                child: Text("自带日期"),
                onPressed: () {
                  Navigator.pushNamed(context, "/datePicker");
                },
              ),
              RaisedButton(
                child: Text("第三方日期"),
                onPressed: () {
                  Navigator.pushNamed(context, "/datePickerPub");
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
