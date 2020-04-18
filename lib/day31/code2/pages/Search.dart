import 'package:flutter/material.dart';

//SearchPage: 搜索页的页面布局
class SearchPage extends StatelessWidget {
  Map arguments;

  SearchPage({this.arguments});

  @override
  Widget build(BuildContext context) {
//    final Map args = ModalRoute.of(context).settings.arguments;//接收参数

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "搜索页面",
        ),
      ),
      body: Text(
        "搜索页面内容区域${this.arguments != null ? this.arguments["id"] : "0"}",
      ),
    );
  }
}
