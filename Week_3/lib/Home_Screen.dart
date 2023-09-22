import 'package:assignment_2/Forgot_password.dart';
import 'package:assignment_2/accounts.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Column(
        children:[
Container(
  child: Text('Welcome To Flutter',style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green),),
),
          SizedBox(height: 20),
          //button for Screen - 1
          Center(
            child: InkWell(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ForgotPassword()
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
                  child: Text('Forgot Password', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
                ),
              ),
            ),
          ),

          SizedBox(height: 10,),

          //button for exercise - 2
          InkWell(
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => loginAccounts()
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
                child: Text('Login Accounts', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
              ),
            ),
          ),

          SizedBox(height: 10,),
        ],
      )
    );
  }
}
