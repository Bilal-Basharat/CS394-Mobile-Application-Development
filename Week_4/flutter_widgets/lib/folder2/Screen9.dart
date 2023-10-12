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
        body: Column(
          children: [
            SizedBox(height: 20),

            Text('This is Flexible Spacebar widget example'),
// this is Flexible spacebar
            CustomScrollView(
              physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              slivers: <Widget>[
                SliverAppBar(
                  stretch: true,
                  onStretchTrigger: () {
                    // Function callback for stretch
                    return Future<void>.value();
                  },
                  expandedHeight: 100.0,
                  flexibleSpace: FlexibleSpaceBar(
                    stretchModes: const <StretchMode>[
                      StretchMode.zoomBackground,
                      StretchMode.blurBackground,
                      StretchMode.fadeTitle,
                    ],
                    centerTitle: true,
                    title: const Text('Flight Report'),
                    background: Stack(
                      fit: StackFit.expand,
                      children: <Widget>[
                        Image.network(
                          'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                          fit: BoxFit.cover,
                          height: 10,
                          width: 10,
                        ),
                        const DecoratedBox(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment(0.0, 0.5),
                              end: Alignment.center,
                              colors: <Color>[
                                Color(0x60000000),
                                Color(0x00000000),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SliverList(
                  delegate: SliverChildListDelegate(
                    const <Widget>[
                      ListTile(
                        leading: Icon(Icons.wb_sunny),
                        title: Text('Sunday'),
                        subtitle: Text('sunny, h: 80, l: 65'),
                      ),
                      ListTile(
                        leading: Icon(Icons.wb_sunny),
                        title: Text('Monday'),
                        subtitle: Text('sunny, h: 80, l: 65'),
                      ),
                      // ListTiles++
                    ],
                  ),
                ),
              ],
            ),
          ],
        )
    );
  }
}
