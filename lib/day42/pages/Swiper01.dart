import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class Swiper01Page extends StatefulWidget {
  @override
  _Swiper01PageState createState() => _Swiper01PageState();
}

class _Swiper01PageState extends State<Swiper01Page> {
  List _imgList = [
    {"url": "https://www.itying.com/images/flutter/1.png"},
    {"url": "https://www.itying.com/images/flutter/2.png"},
    {"url": "https://www.itying.com/images/flutter/3.png"},
    {"url": "https://www.itying.com/images/flutter/4.png"},
    {"url": "https://www.itying.com/images/flutter/5.png"},
    {"url": "https://www.itying.com/images/flutter/6.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("轮播图测试页面"),
      ),
      body: new Swiper(
        itemBuilder: (BuildContext context, int index) {
          return new Image.network(
            _imgList[index]["url"], fit: BoxFit.fill,);
        },
        itemCount: _imgList.length,
        pagination: new SwiperPagination(),
        control: new SwiperControl(),
      ),
    );
  }
}
