import 'package:flutter/material.dart';

import '../components/reusable_card.dart';
import '../components/reusable_styling.dart';

class MainActivity extends StatefulWidget {
  @override
  _MainActivityState createState() => _MainActivityState();
}

class _MainActivityState extends State<MainActivity> {
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
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                ReusableCard(
                  onTap: () {
                    Navigator.pushNamed(context, '/tests');
                  },
                  child: ReusableStyling(
                    text: 'Tests',
                    image: 'images/tests.png',
                    width: 190.0,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                ReusableCard(
                  onTap: () {
                    Navigator.pushNamed(context, '/equipments');
                  },
                  child: ReusableStyling(
                    text: 'Equipments',
                    image: 'images/equipments.png',
                    width: 110.0,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                ReusableCard(
                  onTap: () {
                    Navigator.pushNamed(context, '/helpline');
                  },
                  child: ReusableStyling(
                    text: 'Helpline',
                    image: 'images/helplinee.png',
                    width: 150.0,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                ReusableCard(
                  onTap: () {
                    Navigator.pushNamed(context, '/sanitise');
                  },
                  child: ReusableStyling(
                    text: 'Sanitisation',
                    image: 'images/sanitisation.png',
                    width: 100.0,
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                ReusableCard(
                  onTap: () {
                    Navigator.pushNamed(context, '/chatscreen');
                  },
                  child: ReusableStyling(
                    text: 'Online Consultancy',
                    image: 'images/onlineC.png',
                    width: 10.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
