import 'package:flutter/material.dart';
import 'constants.dart';

import 'package:animated_background/animated_background.dart';

class BasicSlide extends StatefulWidget {
  final TickerProvider tickerProvider;
  final String leftBar;
  final String topTitle;
  final Widget content;

  BasicSlide({
    @required this.tickerProvider,
    this.leftBar = "",
    this.topTitle = "",
    this.content,
  });

  @override
  _BasicSlideState createState() => _BasicSlideState();
}

class _BasicSlideState extends State<BasicSlide> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width * 0.35,
          color: Colors.lightBlueAccent,
          child: AnimatedBackground(
            vsync: widget.tickerProvider,
            behaviour: RandomParticleBehaviour(
              options: ParticleOptions(
                spawnMaxSpeed: 100.0,
                spawnMinSpeed: 50.0,
                particleCount: 50,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(100.0),
              child: Center(
                child: Text(
                  widget.leftBar,
                  style: kLeftBigText,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(
                top: 100, bottom: 50, left: 100, right: 100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  widget.topTitle,
                  style: kBigBlackText,
                ),
                SizedBox(
                  height: 100,
                ),
                Container(
                  child: widget.content,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
