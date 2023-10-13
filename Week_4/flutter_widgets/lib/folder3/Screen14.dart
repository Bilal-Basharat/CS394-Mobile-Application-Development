import 'package:flutter/material.dart';

class Screen14 extends StatefulWidget {
  const Screen14({super.key});

  @override
  State<Screen14> createState() => _Screen14State();
}

class _Screen14State extends State<Screen14> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 14'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            Text('This is Positioned Transition Example Widget'),
            SizedBox(height: 20),
            Flexible(
              flex: 3,
                child: RefreshIndicatorExample()),

            SizedBox(height: 20),

            const RotatedBox(
              quarterTurns: 2,
              child: Text('Rotated Box',
                  style: TextStyle(color: Colors.grey, fontSize: 18),),
            ),

            SizedBox(height: 20),
            Text('Widget used are: \n 1. Refresh Indicator \n 2. Floating Action Button \n'
                ' 3. Flexible \n 4. Rotated Box  \n'
              , style: TextStyle(color: Colors.blue, fontSize: 18),),
          ],
        ),
      ),
    );
  }
}


class RefreshIndicatorExample extends StatefulWidget {
  const RefreshIndicatorExample({super.key});

  @override
  State<RefreshIndicatorExample> createState() =>
      _RefreshIndicatorExampleState();
}

class _RefreshIndicatorExampleState extends State<RefreshIndicatorExample> {
  final GlobalKey<RefreshIndicatorState> _refreshIndicatorKey =
  GlobalKey<RefreshIndicatorState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        key: _refreshIndicatorKey,
        color: Colors.white,
        backgroundColor: Colors.blue,
        strokeWidth: 4.0,
        onRefresh: () async {
          // Replace this delay with the code to be executed during refresh
          // and return a Future when code finishes execution.
          return Future<void>.delayed(const Duration(seconds: 3));
        },
        // Pull from top to show refresh indicator.
        child: ListView.builder(
          itemCount: 25,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text('Item $index'),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Show refresh indicator programmatically on button tap.
          _refreshIndicatorKey.currentState?.show();
        },
        icon: const Icon(Icons.refresh),
        label: const Text('Show Indicator'),
      ),
    );
  }
}
