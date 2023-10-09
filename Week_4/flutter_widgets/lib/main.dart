import 'package:flutter/material.dart';
import 'package:flutter_widgets/folder1/Screen2.dart';
import 'folder1/Screen1.dart';
import 'folder1/Screen3.dart';
import 'myHomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}