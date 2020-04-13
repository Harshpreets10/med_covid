import 'package:flutter/material.dart';

class ReusableStyling extends StatelessWidget {
  final String text;
  final String image;
  final double width;

  ReusableStyling(
      {@required this.text, @required this.image, @required this.width});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          text,
          style: TextStyle(
            fontSize: 25.0,
            color: Colors.white,
            fontFamily: 'Alfa Slab',
          ),
        ),
        SizedBox(
          width: width,
        ),
        Image.asset(
          image,
          height: 80.0,
          width: 80.0,
        ),
      ],
    );
  }
}
