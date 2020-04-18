import 'package:flutter/material.dart';

import 'routes/Routes.dart' show onGenerateRoute;

//code2演示命名路由，传值
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      onGenerateRoute: onGenerateRoute,
    );
  }
}
