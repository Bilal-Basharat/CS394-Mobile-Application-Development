import 'package:flutter/material.dart';

class Screen9 extends StatefulWidget {
  const Screen9({super.key});

  @override
  State<Screen9> createState() => _Screen9State();
}

class _Screen9State extends State<Screen9> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('This is Screen 9'),
      ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Center(child: Text('This is Flexible Spacebar widget example')),
              SizedBox(height: 20),
              // this is Fade Transition
              FadeTransitionExample(),

              SizedBox(height: 20),

              Text('Widgets used are: \n 1. ColoredBox WIdget \n 2. FadeTransition Widget \n  '
                  '3. Slider Widget \n 4. List Tile Widget ',
                  style: TextStyle(color: Colors.blue, fontSize: 18,fontWeight: FontWeight.bold)),
      // CustomScroll(),
            ],
          ),
        )
    );
  }
}

class FadeTransitionExample extends StatefulWidget {
  const FadeTransitionExample({super.key});

  @override
  State<FadeTransitionExample> createState() => _FadeTransitionExampleState();
}

/// [AnimationController]s can be created with `vsync: this` because of
/// [TickerProviderStateMixin].
class _FadeTransitionExampleState extends State<FadeTransitionExample>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 3),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.easeIn,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: FadeTransition(
        opacity: _animation,
        child: const Padding(padding: EdgeInsets.all(8), child: FlutterLogo()),
      ),
    );
  }
}
