import 'package:flutter/material.dart';
import 'package:flutter_widgets/folder1/Screen5.dart';
import 'package:flutter_widgets/folder2/Screen10.dart';
import 'package:flutter_widgets/folder2/Screen7.dart';
import 'package:flutter_widgets/folder2/Screen9.dart';
import 'package:flutter_widgets/folder3/Screen11.dart';
import 'package:flutter_widgets/folder3/Screen12.dart';
import 'package:flutter_widgets/folder3/Screen13.dart';

import 'folder1/Screen1.dart';
import 'folder1/Screen2.dart';
import 'folder1/Screen3.dart';
import 'folder1/Screen4.dart';
import 'folder2/Screen6.dart';
import 'folder2/Screen8.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('This is main file'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Here are buttons to navigate',
                  style: TextStyle(fontSize: 24, color: Colors.blue.shade500),
                ),
                SizedBox(height: 10),

                //1-3 buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // 1st Screen button
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context)
                          {
                            return Screen1();
                          }),);
                      },
                      child: Text('Screen 1'),
                    ),

                    SizedBox(width: 10),
                    // 2nd Screen button
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context)
                          {
                            return Screen2();
                          }),);
                      },
                      child: Text('Screen 2'),
                    ),


                    SizedBox(width: 10),
                    // 3rd Screen button
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context)
                          {
                            return Screen3();
                          }),);
                      },
                      child: Text('Screen 3'),
                    ),
                  ],
                ),

                SizedBox(height: 15),

                //4-6 buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // 1st Screen button
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context)
                          {
                            return Screen4();
                          }),);
                      },
                      child: Text('Screen 4'),
                    ),

                    SizedBox(width: 10),
                    // 5th Screen button
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context)
                          {
                            return Screen5();
                          }),);
                      },
                      child: Text('Screen 5'),
                    ),


                    SizedBox(width: 10),
                    // 6th Screen button
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context)
                          {
                            return Screen6();
                          }),);
                      },
                      child: Text('Screen 6'),
                    ),
                  ],
                ),

                SizedBox(height: 15),

                //7-9 buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // 7th Screen button
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context)
                          {
                            return Screen7();
                          }),);
                      },
                      child: Text('Screen 7'),
                    ),

                    SizedBox(width: 10),

                    // 8th Screen button
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context)
                          {
                            return Screen8();
                          }),);
                      },
                      child: Text('Screen 8'),
                    ),


                    SizedBox(width: 10),
                    // 9th Screen button
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context)
                          {
                            return Screen9();
                          }),);
                      },
                      child: Text('Screen 9'),
                    ),
                  ],
                ),

                SizedBox(height: 15),

                //10-12 buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // 10th Screen button
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context)
                          {
                            return Screen10();
                          }),);
                      },
                      child: Text('Screen 10'),
                    ),

                    SizedBox(width: 10),

                    // 11th Screen button
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context)
                          {
                            return Screen11();
                          }),);
                      },
                      child: Text('Screen 11'),
                    ),


                    SizedBox(width: 10),
                    // 12th Screen button
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context)
                          {
                            return Screen12();
                          }),);
                      },
                      child: Text('Screen 12'),
                    ),
                  ],
                ),

                SizedBox(height: 15),

                //13-15 buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // 13th Screen button
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context)
                          {
                            return Screen13();
                          }),);
                      },
                      child: Text('Screen 13'),
                    ),

                    SizedBox(width: 10),

                    // 8th Screen button
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context)
                          {
                            return Screen8();
                          }),);
                      },
                      child: Text('Screen 14'),
                    ),


                    SizedBox(width: 10),
                    // 9th Screen button
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                          MaterialPageRoute(builder: (context)
                          {
                            return Screen9();
                          }),);
                      },
                      child: Text('Screen 15'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
  }
}
