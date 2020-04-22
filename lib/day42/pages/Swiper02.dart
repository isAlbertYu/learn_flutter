import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class Swiper02Page extends StatefulWidget {
  @override
  _Swiper01PageState createState() => _Swiper01PageState();
}

class _Swiper01PageState extends State<Swiper02Page> {
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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
//              height: 200,
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Swiper(
                  itemBuilder: (BuildContext context, int index) {
                    return new Image.network(
                      _imgList[index]["url"],
                      fit: BoxFit.fill,
                    );
                  },
                  itemCount: _imgList.length,
                  pagination: new SwiperPagination(),
                  //轮播图的底部圆点分页器
                  control: new SwiperControl(),
                  //轮播图的左右箭头
                  loop: true,//是否循环轮播
                  autoplay: true,//是否自动轮播
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Text("轮播图"),
          ],
        ));
  }
}
