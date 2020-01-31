import 'package:flutter/material.dart';
import 'slideOne.dart';
import 'slideTwo.dart';
import 'basicSlide.dart';
import 'slideThree.dart';
import 'slideFour.dart';
import 'slideFive.dart';
import 'slideLast.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      theme: ThemeData(fontFamily: 'SurceSansPro'),
      home: PageView(
        children: <Widget>[
          SlideOne(),
          SlideTwo(),
          SlideThree(),
          SlideFour(),
          SlideFive(),
          SlideLast()
        ],
      ),
    );
  }
}