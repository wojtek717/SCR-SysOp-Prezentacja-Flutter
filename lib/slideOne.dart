import 'package:flutter/material.dart';
import 'constants.dart';

import 'package:animated_background/animated_background.dart';

void main() => runApp(SlideOne());

class SlideOne extends StatefulWidget {
  @override
  _SlideOneState createState() => _SlideOneState();
}

class _SlideOneState extends State<SlideOne>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        body: AnimatedBackground(
          vsync: this,
          behaviour: RandomParticleBehaviour(
            options: ParticleOptions(
              spawnMaxSpeed: 100.0,
              spawnMinSpeed: 50.0,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
                left: 100, right: 100, top: 50, bottom: 50),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'SCR - Systemy Operacyjne',
                        style: kSemiText,
                      ),
                      Text(
                        '24.01.2020',
                        style: kBigText,
                      )
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Flexible(
                        child: Hero(
                          child: Text(
                            'Tworzenie aplikacji na systemy mobilne - Flutter',
                            style: kBigTitleText,
                          ),
                          tag: 'title',
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Wojciech Konury 241488',
                        style: kBigText,
                      ),
                      Text(
                        'github.com/wojtek717',
                        style: kSemiText,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
