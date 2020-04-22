import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

class DatePickerDemoState extends StatefulWidget {
  @override
  _DatePickerDemoStateState createState() => _DatePickerDemoStateState();
}

class _DatePickerDemoStateState extends State<DatePickerDemoState> {
  DateTime _nowDate = DateTime.now();
  TimeOfDay _nowTime = TimeOfDay(hour: 12, minute: 20);

  void _showDatePicker() {
    showDatePicker(
      context: context,
      initialDate: this._nowDate,
      firstDate: DateTime(1980),
      lastDate: DateTime(2100),
    ).then((res) {
      setState(() {
        this._nowDate = res;
      });
    });
  }

  void _showTimePicker() async {
    var res = await showTimePicker(
      context: context,
      initialTime: this._nowTime,
    );
    setState(() {
      this._nowTime = res;
    });
  }

  String formNoralDate(DateTime dateTime) =>
      formatDate(dateTime, [yyyy, "年", mm, "月", dd, "日"]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DatePicker"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          InkWell(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("${formNoralDate(this._nowDate)}"),
                Icon(Icons.arrow_drop_down),
              ],
            ),
            onTap: _showDatePicker,
          ),
          SizedBox(
            height: 30,
          ),
          InkWell(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("${this._nowTime.format(context)}"),
                Icon(Icons.arrow_drop_down),
              ],
            ),
            onTap: _showTimePicker,
          ),
        ],
      ),
    );
  }
}
