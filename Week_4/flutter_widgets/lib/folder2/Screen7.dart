import 'package:flutter/material.dart';

class Screen7 extends StatefulWidget {
  const Screen7({super.key});

  @override
  State<Screen7> createState() => _Screen7State();
}

class _Screen7State extends State<Screen7> {

  final List<String> dropDown = <String>['Select A', 'Select B', 'Select C'];

  String dropdownValue = 'Select A';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('This is Screen 7'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            Text('Select from dropdown',
            style: TextStyle(color: Colors.red, fontSize: 20),),
    SizedBox(height: 20),
    DropdownButton<String>(
    value: dropdownValue,
    icon: const Icon(Icons.arrow_downward),
    elevation: 16,
    style: const TextStyle(color: Colors.deepPurple),
    underline: Container(
    height: 2,
    color: Colors.deepPurpleAccent,
    ),
    onChanged: (String? value) {
    // This is called when the user selects an item.
    setState(() {
    dropdownValue = value!;
    });
    },
    items: dropDown.map<DropdownMenuItem<String>>((String value) {
    return DropdownMenuItem<String>(
    value: value,
    child: Text(value),
    );
    }).toList(),
    ),
Column(
  children: [

    Text('Grid View Widget',
      style: TextStyle(color: Colors.red, fontSize: 20),),

    SizedBox(
      height: 200,
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          ),
          itemCount: dropDown.length,
          itemBuilder: (BuildContext context, index) {
            return Card(
              color: Colors.amber,
              child: Center(child: Text('$index')),
            );
          }
      ),
    ),

    Text('This is Check Box'),
    Checkbox(
      value: true,
      onChanged: (value) {},
    ),

    Text('This is Radio Box'),
    Radio(
      value: 1,
      groupValue: 1,
      onChanged: (value) {},
    ),

    Text('Widgets used are: \n 1. DropDown Widget Widget \n 2. Grid View Widget \n  '
        '3. CheckBox Widget \n 4. Radio Box Widget ',
        style: TextStyle(color: Colors.blue, fontSize: 18,fontWeight: FontWeight.bold)),
  ],
)
            ],
          ),
        ),
      ),
    );
  }
}
