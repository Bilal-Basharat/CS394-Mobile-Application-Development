import 'package:flutter/material.dart';

class ListNumbersPrinting extends StatefulWidget {
  const ListNumbersPrinting({super.key});

  @override
  State<ListNumbersPrinting> createState() => _ListNumbersPrintingState();
}

class _ListNumbersPrintingState extends State<ListNumbersPrinting> {

 List<int> numbers = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
 List<int> filteredNumbers = [];

 void filterNumbers() {
   setState(() {
     filteredNumbers = numbers.where((number) => number < 5).toList();
   });
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        title: Text('Printing Numbers less than 5', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            children: [
              Text('Given List is $numbers'),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: filterNumbers,
                child: Text('Print Numbers < 5'),
              ),
              SizedBox(height: 20.0),
              Column(
                children: filteredNumbers.map((number) {
                  return Text(number.toString(),
                    style: TextStyle(fontSize: 24),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),);
  }
}
