import 'package:flutter/material.dart';

class RectangularButton extends StatelessWidget {
  RectangularButton({@required this.text, this.onPressed});

  final Function onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 6.0,
      onPressed: onPressed,
      constraints: BoxConstraints.tightFor(
        width: 156.0,
        height: 56.0,
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 25.0,
          fontFamily: 'Alfa Slab',
        ),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
