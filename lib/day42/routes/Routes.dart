import 'package:flutter/material.dart';

import '../pages/Tabs.dart';
import '../pages/Swiper01.dart';
import '../pages/Swiper02.dart';

final _routes = {
  "/": (context) => Tabs(),
  "/swiperPage01": (context) => Swiper01Page(),
  "/swiperPage02": (context) => Swiper02Page(),
};

//settings: 包含有路由的名称，以及路由所需传递的参数
Route onGenerateRoute(RouteSettings settings) {
  final String routeName = settings.name; //路由名称
  final routePassArg = settings.arguments; //路由传递的参数
  final Function pageContentBuilder = _routes[routeName];
  if (pageContentBuilder != null) {
    if (routePassArg != null) {
      final Route route = MaterialPageRoute(
        builder: (context) => pageContentBuilder(
          context,
          argument: routePassArg,
        ),
//        settings: RouteSettings(arguments: routePassArg),
      );
      return route;
    } else {
      final Route route = MaterialPageRoute(
        builder: (context) => pageContentBuilder(
          context,
        ),
      );
      return route;
    }
  }
  return null;
}

////固定写法
//var onGenerateRoute=(RouteSettings settings) {
//  // 统一处理
//  final String name = settings.name;
//  final Function pageContentBuilder = routes[name];
//  if (pageContentBuilder != null) {
//    if (settings.arguments != null) {
//      final Route route = MaterialPageRoute(
//          builder: (context) =>
//              pageContentBuilder(context, arguments: settings.arguments));
//      return route;
//    }else{
//      final Route route = MaterialPageRoute(
//          builder: (context) =>
//              pageContentBuilder(context));
//      return route;
//    }
//  }
//};
