import 'package:flutter/material.dart';
import 'routes/Routes.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(),
      debugShowCheckedModeBanner: false,
      initialRoute: "/bottonPage",
      onGenerateRoute: onGenerateRoute,
    );
  }
}
