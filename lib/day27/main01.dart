import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Flutter demo"),),
        body: LayoutDemo(),
      ),
    );
  }
}

class LayoutDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      children: <Widget>[
        MyButton("第1集"),
        MyButton("第2集"),
        MyButton("第3集"),
        MyButton("第4集"),
        MyButton("第5集"),
        MyButton("第6集"),
        MyButton("第7集"),
        MyButton("第8集"),
        MyButton("第9集"),
        MyButton("第10集"),
        MyButton("第11集"),
        MyButton("第3集"),
        MyButton("第4集"),
        MyButton("第5集"),
        MyButton("第6集"),
        MyButton("第7集"),
        MyButton("第8集"),
        MyButton("第9集"),
        MyButton("第10集"),
        MyButton("第"),
      ],
    );
  }
}

class MyButton extends StatelessWidget{
  final String text;
  const MyButton(this.text);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(
        this.text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 16.0,
          color: Colors.red,
        ),
      ),

      textColor: Colors.blue,//文本的颜色
      color: Colors.yellow,//按钮的背景颜色
      highlightColor: Colors.red,//按钮按下时颜色

      disabledTextColor: Colors.blue,//按钮禁用时候文字的颜色
      splashColor: Colors.blue,//水波纹的颜色

      onPressed: (){

      },
    );
  }
}