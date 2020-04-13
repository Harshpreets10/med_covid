import 'package:flutter/material.dart';

class MainImage extends StatelessWidget {
  final double width;
  final double height;
  final double topWidth;

  MainImage(
      {@required this.height, @required this.width, @required this.topWidth});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.only(top: topWidth),
        child: Image.asset(
          'images/medcovid.png',
          width: width,
          height: height,
        ),
      ),
    );
  }
}
