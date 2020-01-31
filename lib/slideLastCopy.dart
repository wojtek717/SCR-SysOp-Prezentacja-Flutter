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
                      Flexible(
                          child: Text(
                            'Dziękuje za uwagę!',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: _sliderValue,
                            ),
                          ),
                      ),
                    ],
                  ),
                  Slider(
                    activeColor: Colors.white,
                    min: 50,
                    max: 150.0,
                    onChanged: (newRating) {
                      setState(() => _sliderValue = newRating);
                    },
                    value: _sliderValue,
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
