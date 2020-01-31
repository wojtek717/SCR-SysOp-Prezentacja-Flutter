import 'package:flutter/material.dart';
import 'constants.dart';
import 'basicSlide.dart';
import 'basicSlideNoTitle.dart';
import 'itemizedListItem.dart';

import 'package:animated_background/animated_background.dart';

void main() => runApp(SlideFour());

class SlideFour extends StatefulWidget {
  @override
  _SlideFourState createState() => _SlideFourState();
}

class _SlideFourState extends State<SlideFour>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        backgroundColor: Colors.white,
        body: BasicSlideNoTitle(
          tickerProvider: this,
          leftBar: '1 kod \n 2 aplikacje *',
          content: Column(
            children: <Widget>[
              Image.asset('images/kod.png'),
            ],
          ),
        ),
      ),
    );
  }
}

