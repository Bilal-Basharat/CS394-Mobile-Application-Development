import 'package:flutter/material.dart';

import 'folder1/Screen1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('This is main file'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Here are buttons to navigate to Screens',
                style: TextStyle(fontSize: 24, color: Colors.blue.shade500),
              ),
              // Add your button here
              ElevatedButton(
                onPressed: () {
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context) => Screen1()));
                },
                child: Text('Screen 1'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}