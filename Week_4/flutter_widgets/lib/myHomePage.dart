import 'package:flutter/material.dart';
import 'package:flutter_widgets/folder1/Screen5.dart';

import 'folder1/Screen1.dart';
import 'folder1/Screen2.dart';
import 'folder1/Screen3.dart';
import 'folder1/Screen4.dart';
import 'folder2/Screen6.dart';

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

                //first three button
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
                    // 2nd Screen button
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

                //3-6 buttons
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
                    // 2nd Screen button
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
                    // 2nd Screen button
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
              ],
            ),
          ),
        ),
      );
  }
}
