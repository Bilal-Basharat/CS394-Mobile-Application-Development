import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.amber.withOpacity(0.3),
                  ),
                  child: Icon(
                    Icons.lock,
                    color: Colors.orange.shade800,
                    size: 20,
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  child: Text('Forgot Password?',
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ),
                SizedBox(width: 90),
                Container(
                  child: Icon(
                    Icons.cancel
                  ),
                )
              ],
            ),
            SizedBox(height: 20),
            Container(
              child: Text('Enter your Email that you used to register your account,'
                  ' so we can send you a link to reset your password',
              style: TextStyle(fontSize: 18, ),),
            ),
            SizedBox(height: 20),
            Container(
              alignment: Alignment.centerLeft,
              child: Text('Email*',
                style: TextStyle(fontSize: 16, ),),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    width: 1.0,
                    color: Colors.grey,
                  )
                ),
                labelText: 'Enter your email',
              ),
            ),
            SizedBox(height: 25),
            Container(
              alignment: Alignment.center,
              width: 500,
              height: 50,
              decoration: BoxDecoration(
              color: Colors.blue,
                borderRadius: BorderRadius.circular(8.0)
              ),
              child: Text('Send Link',
              style: TextStyle(color: Colors.white, fontSize: 18),),
            ),
            SizedBox(height: 25),
            Divider(
              color: Colors.grey,
              thickness: 1.0,
            ),
            SizedBox(height: 25),
            Row(
              children: [
                Container(
                  child: Text('Forgot your email?'),
                ),
                InkWell(
                  onTap: (){
                    print('you cliked me');
                  },
                  child: Text('Try phone number',
                  style: TextStyle(color: Colors.blue.shade800, fontSize: 18,
                  fontWeight: FontWeight.bold),),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
