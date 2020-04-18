import 'package:flutter/material.dart';

import 'routes/Routes.dart' show onGenerateRoute;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      onGenerateRoute: onGenerateRoute,
    );
  }
}
