import 'package:flutter/material.dart';
import 'dart:math';
class Screen15 extends StatefulWidget {
  const Screen15({super.key});

  @override
  State<Screen15> createState() => _Screen15State();
}

class _Screen15State extends State<Screen15> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Screen 15'),
        ),
        body: Padding(
        padding: const EdgeInsets.all(20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
    children: [

    Center(child: Text('This is Wrap Widget')),
    SizedBox(height: 20),

      Wrap(
        spacing: 8.0, // gap between adjacent chips
        runSpacing: 4.0, // gap between lines
        children: <Widget>[
          Chip(
            avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: const Text('AH')),
            label: const Text('Hamilton'),
          ),
          Chip(
            avatar: CircleAvatar(backgroundColor: Colors.blue.shade900, child: const Text('ML')),
            label: const Text('Lafayette'),
          ),
          Chip(
            avatar: CircleAvatar(
              radius: 200,
              backgroundImage: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
            ),
            label: const Text('Owl'),
          ),

        ],
      ),

      SizedBox(height: 20),
      Center(child: Text('This is Wrap Widget')),
      SizedBox(height: 20),

      ShaderMask(
        shaderCallback: (Rect bounds) {
          return RadialGradient(
            center: Alignment.topLeft,
            radius: 1.0,
            colors: <Color>[Colors.blue.shade200, Colors.blue.shade800],
            tileMode: TileMode.mirror,
          ).createShader(bounds);
        },
        child: const Text(
          'This is Shader Mask',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),

      SizedBox(height: 20),
      Text('Widget used are: \n 1. Wrap Widget \n 2. Chip Widget \n'
          ' 3. Circle Avatar \n 4. Shader Mask  \n'
        , style: TextStyle(color: Colors.blue, fontSize: 18),),
],
    ),
    ),
    );
  }
}

class MyPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size){
    canvas.drawCircle(Offset(7,7), 50, Paint());
canvas.drawLine(Offset(0, 0), Offset(20, 20), Paint());
    canvas.drawRect(Rect.fromPoints(Offset.zero, Offset(50,50)),Paint(),);

    final smileFace = Paint()..style = PaintingStyle.stroke..strokeWidth = 10;
    canvas.drawArc(Rect.fromCircle(center: Offset(50,50), radius: 10), 0, 3.14, false, smileFace);
  }

  @override
  bool shouldRepaint(CustomPainter old){
    return true;
  }
}