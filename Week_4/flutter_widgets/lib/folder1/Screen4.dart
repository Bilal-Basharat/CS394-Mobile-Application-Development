import 'package:flutter/material.dart';

class Screen4 extends StatefulWidget {
  const Screen4({super.key});

  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('This is screen 4'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(

                child: Text('This is an expanded widget'),),

              TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue.shade800,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: (){
                print('button is clicked');
              }, child: Text('This is text button')),

              SizedBox(height: 20),

              Text('This is an icon'),

              SizedBox(height: 10),

              Container(
                child: Icon(
                  Icons.add,
                  color: Colors.blue,
                ),
              ),
              SizedBox(height: 20),
              Text('This is an icon button'),
              SizedBox(height: 10),
              Container(
                child: IconButton(
                  icon: Icon(
                    Icons.one_k, // Replace with the desired icon
                    color: Colors.red, // Set the icon color
                    size: 48.0, // Set the icon size
                  ),
                  onPressed: () {
                    // Define the action to be taken when the button is pressed
                    // For example, you can toggle the favorite state.
                    print('IconButton pressed!');
                  },
              ),
              ),
              SizedBox(height: 30),
              Text('Widgets used are: \n 1. Expanded Widget \n 2. Icon Button Widget \n  3. SizedBox Widget \n '
                  '4. Text Button Widget',
                  style: TextStyle(color: Colors.blue, fontSize: 18,fontWeight: FontWeight.bold)),
            ],
          ),
        ),
      ),
    );
  }
}
