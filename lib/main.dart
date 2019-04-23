import 'package:flutter/material.dart';
import 'const/_const.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: FLUTTER_OPEN,
      theme: ThemeData(primaryColor: BLUE_DEEP),
      home: HomePage(),
      routes: {
        PageName.CONTAINER : (context) => ContainerPage(),
      }
    );
  }
}