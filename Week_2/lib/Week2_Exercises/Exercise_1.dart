import 'dart:ui';

import 'package:flutter/material.dart';

class Exercise1 extends StatefulWidget {
  const Exercise1({super.key});

  @override
  State<Exercise1> createState() => _Exercise1State();
}

class _Exercise1State extends State<Exercise1> {

  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  var hundredYears;
  var userName;

  void calculateYearsTo100(){
    int age = int.tryParse(ageController.text) ?? 0;
    setState(() {
      hundredYears = 100 - age;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: Text('Exercise - 1', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                labelText: 'Enter Your Name'
              ),
            ),
            TextField(
              controller: ageController,
              decoration: InputDecoration(
                  labelText: 'Enter Your Age'
              ),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                calculateYearsTo100();
                userName = nameController.text;
              },
              child: Text('Calculate'),
            ),
        SizedBox(height: 20.0),

        Text('$userName You have $hundredYears years to be 100 years old.',
          style: TextStyle(fontSize: 18.0),),
          ],
        ),
      ),
    );
  }
}
