import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';

class DatePickerPubDemoState extends StatefulWidget {
  @override
  _DatePickerPubDemoStateState createState() => _DatePickerPubDemoStateState();
}

class _DatePickerPubDemoStateState extends State<DatePickerPubDemoState> {
  DateTime _nowDate = DateTime.now();
  DateTime _nowDateTime = DateTime.now();

  void _showDatePicker() {
    DatePicker.showDatePicker(
      context,
      pickerTheme: DateTimePickerTheme(
        showTitle: true,
        confirm: Text('确定', style: TextStyle(color: Colors.red)),
        cancel: Text('取消', style: TextStyle(color: Colors.cyan)),
      ),
      minDateTime: DateTime.parse("1990-05-12"),
      maxDateTime: DateTime.parse("2100-05-12"),
      initialDateTime: this._nowDate,
      dateFormat: "yyyy-MMMM-dd",
      locale: DateTimePickerLocale.zh_cn,
      onClose: () => print("----- onClose -----"),
      onCancel: () => print('onCancel'),
//      onChange: (dateTime, List<int> index) {
//        setState(() {
//          _dateTime = dateTime;
//        });
//      },
      onConfirm: (dateTime, List<int> index) {
        setState(() {
          this._nowDate = dateTime;
        });
      },
    );
  }

  void _showDateTimePicker() {
    DatePicker.showDatePicker(
      context,
      minDateTime: DateTime.parse("1990-05-12"),
      maxDateTime: DateTime.parse("2100-05-12"),
      initialDateTime: this._nowDateTime,
      dateFormat: 'yyyy年M月d日    EEE,H时:m分',
      locale: DateTimePickerLocale.zh_cn,
      pickerTheme: DateTimePickerTheme(
        showTitle: true,
        confirm: Text('确定', style: TextStyle(color: Colors.red)),
        cancel: Text('取消', style: TextStyle(color: Colors.cyan)),
      ),
      pickerMode: DateTimePickerMode.datetime,
      // show TimePicker

      onCancel: () {
        debugPrint('onCancel');
      },
//      onChange: (dateTime, List<int> index) {
//        setState(() {
//          this._nowDateTime = dateTime;
//        });
//      },
      onConfirm: (dateTime, List<int> index) {
        setState(() {
          this._nowDateTime = dateTime;
        });
      },
    );
  }

  String formNoralDate(DateTime dateTime) =>
      formatDate(dateTime, [yyyy, "年", mm, "月", dd, "日"]);

  String formNoralTimeDate(DateTime dateTime) =>
      formatDate(dateTime, [yyyy, "年", mm, "月", dd, "日", " ", HH, ":", nn]);


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
                Text("${formNoralTimeDate(this._nowDateTime)}"),
                Icon(Icons.arrow_drop_down),
              ],
            ),
            onTap: _showDateTimePicker,
          ),
        ],
      ),
    );
  }
}
