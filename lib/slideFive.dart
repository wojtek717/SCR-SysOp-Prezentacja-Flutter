import 'package:flutter/material.dart';
import 'constants.dart';
import 'basicSlide.dart';
import 'basicSlideNoTitle.dart';
import 'itemizedListItem.dart';

import 'package:animated_background/animated_background.dart';

void main() => runApp(SlideFive());

class SlideFive extends StatefulWidget {
  @override
  _SlideFiveState createState() => _SlideFiveState();
}

class _SlideFiveState extends State<SlideFive>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        backgroundColor: Colors.white,
        body: BasicSlideNoTitle(
          tickerProvider: this,
          leftBar: 'Wszystko jest widgetem',
          content: Column(
            children: <Widget>[
              Image.asset('images/widgetem.png'),
            ],
          ),
        ),
      ),
    );
  }
}

