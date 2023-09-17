import 'package:dart_practise_tasks/Week2_Exercises/Exercise_2.dart';
import 'package:dart_practise_tasks/Week2_Exercises/Exercise_3.dart';
import 'package:flutter/material.dart';
import 'Week2_Exercises/Exercise_1.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //navigation bar
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text('This is Home Screen', style: TextStyle(color: Colors.white),),
      ),
      //body of the screen
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: Column(
            children: [

              //button for exercise - 1
              InkWell(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Exercise1()
                      )
                  );
                },
                child: Container(
                  width: 200,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: Colors.green,
                  ),
                  child: Center(
                    child: Text('Exercise 1', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
                  ),
                ),
              ),

              SizedBox(height: 10,),

              //button for exercise - 2
              InkWell(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => EvenOrOdd()
                      )
                  );
                },
                child: Container(
                  width: 200,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: Colors.green,
                  ),
                  child: Center(
                    child: Text('Exercise 2', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
                  ),
                ),
              ),

              SizedBox(height: 10,),

              //button for exercise - 3
              InkWell(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ListNumbersPrinting()
                      )
                  );
                },
                child: Container(
                  width: 200,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: Colors.green,
                  ),
                  child: Center(
                    child: Text('Exercise 3', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
