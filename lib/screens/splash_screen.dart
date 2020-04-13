import 'package:flutter/material.dart';
import 'package:medcovid/components/rectangular_button.dart';

import '../components/main_Image.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'MEDCOVID',
          style: TextStyle(
            fontSize: 25.0,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Hero(
            tag: 'logo',
            child: MainImage(
              width: 240.0,
              height: 240.0,
              topWidth: 60.0,
            ),
          ),
          SizedBox(
            height: 100.0,
          ),
          Text(
            'Welcome to the one stop solution to all your Medical problems.',
            style: TextStyle(
              fontSize: 25.0,
              color: Color(0xFF8D8E98),
              fontFamily: 'Alfa Slab',
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 50.0,
          ),
          RectangularButton(
            text: 'Login',
            onPressed: () {
              Navigator.pushNamed(context, '/login');
            },
          ),
          SizedBox(
            height: 20.0,
          ),
          RectangularButton(
            text: 'Sign Up',
            onPressed: () {
              Navigator.pushNamed(context, '/signup');
            },
          )
        ],
      ),
    );
  }
}
