import 'package:flutter/material.dart';

class EvenOrOdd extends StatefulWidget {
  const EvenOrOdd({super.key});

  @override
  State<EvenOrOdd> createState() => _EvenOrOddState();
}

class _EvenOrOddState extends State<EvenOrOdd> {

  TextEditingController evenOddController = TextEditingController();
  String numberState = '';

  void determineNumber(){
    int number = int.tryParse(evenOddController.text) ?? 0;
    setState(() {
      if(number % 2 == 0){
        numberState = 'The number you have entered is even';
      }else{
        numberState = 'The number you have entered is odd';
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: Text('Exercise - 2 ( even or odd )', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextField(
              controller: evenOddController,
              decoration: InputDecoration(
                  labelText: 'Enter any number'
              ),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                determineNumber();
              },
              child: Text('Submit'),
            ),
            SizedBox(height: 20.0),

            Text('$numberState',
              style: TextStyle(fontSize: 18.0),),
          ],
        ),
      ),
    );
  }
}
