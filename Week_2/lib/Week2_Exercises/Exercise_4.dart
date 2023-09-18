import 'package:flutter/material.dart';

class FindDivisor extends StatefulWidget {
  const FindDivisor({super.key});

  @override
  State<FindDivisor> createState() => _FindDivisorState();
}

class _FindDivisorState extends State<FindDivisor> {

  TextEditingController findDivisorController = TextEditingController();
  var userInput;
  List<int> divisors = [];
  var resultText = '';

  void findAllDivisors(){
    int number = int.tryParse(findDivisorController.text) ?? 0;
      divisors.clear(); // Clear the previous divisors
      for(int i = 2; i < number; i++){
  if(number % i == 0){
    divisors.add(i);
  }
}
    setState(() {
      resultText = 'The Divisors of the number are ${divisors.join(", ")}';
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: Text(' Find all divisors of a number ', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextField(
              controller: findDivisorController,
              decoration: InputDecoration(
                  labelText: 'Enter any number to find its divisor'
              ),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                findAllDivisors();
              },
              child: Text('Submit'),
            ),
            SizedBox(height: 20.0),

            Text('$resultText',
              style: TextStyle(fontSize: 18.0),),
          ],
        ),
      ),

    );
  }
}
