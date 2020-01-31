import 'package:flutter/material.dart';
import 'constants.dart';

class ItemizedListItem extends StatelessWidget {
  final String text;

  ItemizedListItem({@required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(
          Icons.brightness_1,
        ),
        SizedBox(
          width: 20.0,
        ),
        Flexible(
          child: Text(
            text,
            style: kBigBlackText,
          ),
        ),
      ],
    );
  }
}
