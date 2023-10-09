import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  String inputText = '';
  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('This is Screen 2'),
      ),
      body: Column(
        children: [
          Container(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Input anything to display below',
              ),
            ),
          ),
          TextButton(
              onPressed:() {
                inputText = textController.toString();
              },
              child: Text('Submit')),
          Container(
            child: Text(inputText),
          ),
          Text('Widgets used are: 1. Text Field Widget \n '
              '2. TextButton Widget \n 3. Container Widge \n 4. Text Widget  ',
              style: TextStyle(color: Colors.red, fontSize: 20,fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
