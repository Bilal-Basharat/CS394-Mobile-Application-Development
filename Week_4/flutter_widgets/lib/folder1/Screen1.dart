import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  TextEditingController inputText = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('This is Screen 1'),
      ),
      body: Column(
        children: [
          Container(
            child: Image.asset('assets/flag-pakistan.jpg'),
          ),
          Text('Widgets used are: \n 1. AppBar Widget \n 2. Scaffold Widget \n 3. Column Widget \n'
              '4. Image Widget \n',
          style: TextStyle(color: Colors.red, fontSize: 20,fontWeight: FontWeight.bold)),

        ],
      ),
    );
  }
}
