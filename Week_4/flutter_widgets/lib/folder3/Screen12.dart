import 'package:flutter/material.dart';
import 'package:flutter_widgets/myHomePage.dart';

class Screen12 extends StatefulWidget {
  const Screen12({super.key});

  @override
  State<Screen12> createState() => _Screen12State();
}

class _Screen12State extends State<Screen12> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('This is Screen 12'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text('This is Form Example Widget'),
              SizedBox(height: 15),
            FormExample(),

            SizedBox(height: 15),
            Text('This is Stepper Widget Example Widget'),
            SizedBox(height: 15),

            StepperExample(),

            SizedBox(height: 15),
            Text('This is Inkwell Widget Example Widget'),
            SizedBox(height: 15),

        InkWell(
          onTap: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (Context) => MyHomePage() ));
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            width: 200,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
              child: Text(
                'Go to Home Screen',
                style: TextStyle(color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
SizedBox(height: 10),
            Text('Widget used are: \n 1. Form Widget 2. Text Form Field \n'
                ' 3. Stepper Widget 4. InkWell \n 5. Material Page Route'
                , style: TextStyle(color: Colors.blue, fontSize: 18),),
          ],
        ),
      ),
    );
  }
}

//form example widget class
class FormExample extends StatefulWidget {
  const FormExample({super.key});

  @override
  State<FormExample> createState() => _FormExampleState();
}

class _FormExampleState extends State<FormExample> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Enter your email',
            ),
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                // Validate will return true if the form is valid, or false if
                // the form is invalid.
                if (_formKey.currentState!.validate()) {
                  // Process data.
                }
              },
              child: const Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}

//stepper example
class StepperExample extends StatefulWidget {
  const StepperExample({super.key});

  @override
  State<StepperExample> createState() => _StepperExampleState();
}

class _StepperExampleState extends State<StepperExample> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Stepper(
      currentStep: _index,
      onStepCancel: () {
        if (_index > 0) {
          setState(() {
            _index -= 1;
          });
        }
      },
      onStepContinue: () {
        if (_index <= 0) {
          setState(() {
            _index += 1;
          });
        }
      },
      onStepTapped: (int index) {
        setState(() {
          _index = index;
        });
      },
      steps: <Step>[
        Step(
          title: const Text('Step 1 title'),
          content: Container(
            alignment: Alignment.centerLeft,
            child: const Text('Content for Step 1'),
          ),
        ),
        const Step(
          title: Text('Step 2 title'),
          content: Text('Content for Step 2'),
        ),
      ],
    );
  }
}