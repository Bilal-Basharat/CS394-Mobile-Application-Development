import 'package:flutter/material.dart';

class Screen5 extends StatefulWidget {
  const Screen5({super.key});

  @override
  State<Screen5> createState() => _Screen5State();
}

class _Screen5State extends State<Screen5> {

  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('This is screen 5'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {
                print('Elevated Button is pressed');
              },
            child: const Text('Elevated Button') ),
              const Card(
                elevation: 4, // Set the card's elevation (shadow)
                margin: EdgeInsets.all(16), // Set margin around the card
                child: Padding(
                  padding: EdgeInsets.all(10), // Set padding inside the card
                  child: Column(
                    children: [
                      Text(
                        'Card',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.green
                        ),
                      ),
                      SizedBox(height: 8), // Add some space
                      Text(
                        'This is a card',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.red
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              SizedBox(height: 15),

              SizedBox(
                height: 100,
                child: ListView(
                  padding: const EdgeInsets.all(8),
                  children: <Widget>[
                    Container(
                      height: 50,
                      color: Colors.amber[800],
                      child: const Center(child: Text('Color 1')),
                    ),
                    Container(
                      height: 50,
                      color: Colors.amber[600],
                      child: const Center(child: Text('Color 2')),
                    ),
                    Container(
                      height: 50,
                      color: Colors.amber[400],
                      child: const Center(child: Text('Color 3')),
                    ),
                    Container(
                      height: 50,
                      color: Colors.amber[200],
                      child: const Center(child: Text('Color 4')),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Widgets used are: \n 1. ELevated Button Widget \n 2. Card Widget \n  3. ListView Widget \n '
                      '4. Row Widget ',
                      style: TextStyle(color: Colors.blue, fontSize: 18,fontWeight: FontWeight.bold)),
                ],
              ),
            ],

          ),
        ),
      ),
    );
  }
}
