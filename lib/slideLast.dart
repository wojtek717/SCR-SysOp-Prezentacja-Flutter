import 'package:flutter/material.dart';
import 'constants.dart';

import 'package:animated_background/animated_background.dart';

void main() => runApp(SlideLast());

class SlideLast extends StatefulWidget {
  @override
  _SlideLastState createState() => _SlideLastState();
}

class _SlideLastState extends State<SlideLast>
    with SingleTickerProviderStateMixin {

  double _sliderValue = 75.0;

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
                    children: <Widget>[
                      //Flexible(
//Tutaj dodajemy tekst
                      //),
                    ],
                  ),
//Tutaj dodajemy slider
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
//Tutaj dajemy tekst
//Tutaj tez dajemy tekst
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
