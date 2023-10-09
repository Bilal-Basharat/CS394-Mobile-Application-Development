import 'package:flutter/material.dart';

class Screen6 extends StatefulWidget {
  const Screen6({super.key});

  @override
  State<Screen6> createState() => _Screen6State();
}

class _Screen6State extends State<Screen6> {

  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('This is Screen 6'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 150,
            child: ListView.builder(
              itemCount: entries.length,
              prototypeItem: ListTile(
                title: Text(entries.first),
              ),
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(entries[index]),
                );
              },
            ),
          ),



          Text('Widgets used are: \n 1. ListView.builder Widget \n 2. List Tile Widget \n  3. ListView Widget \n '
              '4. Bottom Navigation Bar ',
              style: TextStyle(color: Colors.blue, fontSize: 18,fontWeight: FontWeight.bold)),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
         items: const <BottomNavigationBarItem> [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
      ),
    );
  }
}
