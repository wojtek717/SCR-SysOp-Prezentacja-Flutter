import 'package:flutter/material.dart';
import 'constants.dart';
import 'basicSlide.dart';
import 'basicSlideNoTitle.dart';
import 'itemizedListItem.dart';

import 'package:animated_background/animated_background.dart';

void main() => runApp(SlideTwo());

class SlideTwo extends StatefulWidget {
  @override
  _SlideTwoState createState() => _SlideTwoState();
}

class _SlideTwoState extends State<SlideTwo>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        backgroundColor: Colors.white,
        body: BasicSlideNoTitle(
          tickerProvider: this,
          leftBar: 'Czym jest Flutter?',
          content: Column(
            children: <Widget>[
              ItemizedListItem(
                text: 'Jeden kod',
              ),
              ItemizedListItem(
                text: 'Natywnie na Android i iOS',
              ),
              ItemizedListItem(
                text: 'Dart',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
