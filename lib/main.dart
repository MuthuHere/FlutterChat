import 'package:flutter/material.dart';
import 'package:flutter_ui/ui/home/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Muthu Chat',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.purpleAccent,
        accentColor: Color(0xFFFFEF9EB),
      ),
      home: HomePage(),
    );
  }
}
