import 'package:flutter/material.dart';

class loginAccounts extends StatefulWidget {
  const loginAccounts({super.key});

  @override
  State<loginAccounts> createState() => _loginAccountsState();
}

class _loginAccountsState extends State<loginAccounts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.amber.withOpacity(0.3),
                  ),
                  child: Icon(
                    size:20,
                    color: Colors.orange.shade800,
                    Icons.supervised_user_circle_sharp,
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  child: Text('Accounts',
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Icon(
                        Icons.cancel
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 25),
            Container(
              child: Text('Add another account so that you can switch between them easily.',
                style: TextStyle(fontSize: 18, color: Colors.grey ),),
            ),
            SizedBox(height: 25),
            Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Text('Your existing account',
                    style: TextStyle(fontSize: 16, ),),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerRight,
                    child: Text('Manage Account',
                      style: TextStyle(fontSize: 16,color: Colors.orange.shade800, fontWeight: FontWeight.bold ),),
                  ),
                ),
              ],
            ),

            SizedBox(height: 15),

            //accounts widgets ( account 1 detail)
            Container(
              width: double.infinity,
              height: 80,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.grey,
                  width: 1.0,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  children: [

                    CircleAvatar(
                      radius: 50.0,
                      backgroundImage: Image.asset('images/image-1.jpg',
                      fit: BoxFit.cover,
                      ).image,
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: Text('Bilal Basharat',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                            ),
                          ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: Text('bilalbisharat@gmail.com',
                              style: TextStyle(fontSize: 16, color: Colors.grey),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Container(
                        child: Icon(
                          Icons.check_circle,
                          color: Colors.blue.shade800,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 15),

            //accounts widgets ( account 2 detail)
            Container(
              width: double.infinity,
              height: 80,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.grey,
                  width: 1.0,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 50.0,
                      backgroundImage: Image.asset('images/image-2.jpg',
                        fit: BoxFit.cover,
                      ).image,
                    ),
                    SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: Text('Amad Irfan',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: Text('amad.irfan@gmail.com',
                              style: TextStyle(fontSize: 16, color: Colors.grey),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(
                          30.0,0.0,0.0,0.0),
                      child: Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.blue.shade50,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        alignment: Alignment.centerRight,
                        child: Text('5',
                          style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 15),

            //accounts widgets ( account 3 detail)
            Container(
              width: double.infinity,
              height: 80,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: Colors.grey,
                  width: 1.0,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 50.0,
                      backgroundImage: Image.asset('images/image-3.jpg',
                        fit: BoxFit.cover,
                      ).image,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: Text('Hammad Hassan',
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.centerLeft,
                            child: Text('hammad.hassan@gmail.com',
                              style: TextStyle(fontSize: 16, color: Colors.grey),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          color: Colors.blue.shade50,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      alignment: Alignment.centerRight,
                      child: Text('10',
                        style: TextStyle(fontSize: 8,fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 25),

            //button to add more accounts
            GestureDetector(
              onTap: (){
                print('You clicked the button');
              },
              child: Container(
                alignment: Alignment.center,
                width: 500,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.blue.shade800,
                    borderRadius: BorderRadius.circular(8.0)
                ),
                child: Text('Add another +',
                  style: TextStyle(color: Colors.white, fontSize: 18),),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
