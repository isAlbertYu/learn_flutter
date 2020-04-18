import 'package:flutter/material.dart';

import '../pages/Tabs.dart';
import '../pages/Form.dart';
import '../pages/Search.dart';
import '../pages/Product.dart';
import '../pages/ProductInfo.dart';

final _routes = {
  "/": (context) => Tabs(),
  "/form": (context) => FormPage(),
  "/search": (context, {argument}) => SearchPage(arguments: argument),
  "/productinfo": (context, {argument}) => ProductInfoPage(arguments: argument),
  "/product": (context) => ProductPage(),
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
