import 'package:flutter/material.dart';
import 'package:my_way/pages/HomePage.dart';
import 'package:my_way/widgets/AlertScreen.dart';
import 'package:my_way/layouts/ActivityBox.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: MyHomePage(
        title: 'My Way',
      ),
    );
  }
}
