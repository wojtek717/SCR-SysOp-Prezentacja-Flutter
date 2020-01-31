import 'package:flutter/material.dart';
import 'constants.dart';
import 'basicSlide.dart';
import 'basicSlideNoTitle.dart';
import 'itemizedListItem.dart';

import 'package:animated_background/animated_background.dart';

void main() => runApp(SlideThree());

class SlideThree extends StatefulWidget {
  @override
  _SlideThreeState createState() => _SlideThreeState();
}

class _SlideThreeState extends State<SlideThree>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        backgroundColor: Colors.white,
        body: BasicSlideNoTitle(
          tickerProvider: this,
          leftBar: 'Jak to działa?',
          content: Column(
            children: <Widget>[
              ItemizedListItem(
                text: 'Skia',
              ),
              ItemizedListItem(
                text: 'Platform APIs',
              ),
              SizedBox(height: 20.0,),
              Image.asset('images/f2.png'),
            ],
          ),
        ),
      ),
    );
  }
}

