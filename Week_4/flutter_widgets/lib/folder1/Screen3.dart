import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 3'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          children: [
            Text('This is Padding Widget'),
            SizedBox(height: 25),

            Center(

              child: Text('This is Center Widget'),
            ),
            SizedBox(height: 25),

            RichText(
              text: TextSpan(
                text: 'rich Text widget',
                style: DefaultTextStyle.of(context).style,
                children: const <TextSpan>[
                  TextSpan(text: 'text span widget', style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            SizedBox(height: 25),
            Text('Widgets used are: \n 1. Padding Widget \n 2. Centre Widget \n  3. Rich Text Widget \n '
                '4. Text Span Widget',
                style: TextStyle(color: Colors.blue, fontSize: 18,fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
