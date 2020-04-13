import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medcovid/components/rectangular_button.dart';
import 'package:medcovid/components/round_button.dart';
import 'package:medcovid/constants.dart';

class Equipments extends StatefulWidget {
  @override
  _EquipmentsState createState() => _EquipmentsState();
}

class _EquipmentsState extends State<Equipments> {
  int mqty = 0;
  int gqty = 0;
  int sqty = 0;
  int shoeCover = 0;
  int headCover = 0;

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
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 20.0),
            child: Text(
              'Add equipments to your cart and proceed to checkout!',
              style: kCartfont,
              textAlign: TextAlign.center,
            ),
          ),
          SafeArea(
            child: Container(
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color(0xFF1D1E33),
              ),
              child: Row(
                children: <Widget>[
                  Text('Masks', style: kCartLabel),
                  SizedBox(
                    width: 170.0,
                  ),
                  RoundIconButton(
                    icon: FontAwesomeIcons.plus,
                    onPressed: () {
                      setState(() {
                        mqty++;
                      });
                    },
                  ),
                  Text(
                    mqty.toString(),
                    style: kCartLabel,
                  ),
                  RoundIconButton(
                    icon: FontAwesomeIcons.minus,
                    onPressed: () {
                      setState(() {
                        mqty--;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          SafeArea(
            child: Container(
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.only(left: 20.0, right: 20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color(0xFF1D1E33),
              ),
              child: Row(
                children: <Widget>[
                  Text('Gloves', style: kCartLabel),
                  SizedBox(
                    width: 160.0,
                  ),
                  RoundIconButton(
                    icon: FontAwesomeIcons.plus,
                    onPressed: () {
                      setState(() {
                        gqty++;
                      });
                    },
                  ),
                  Text(
                    gqty.toString(),
                    style: kCartLabel,
                  ),
                  RoundIconButton(
                    icon: FontAwesomeIcons.minus,
                    onPressed: () {
                      setState(() {
                        gqty--;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          SafeArea(
            child: Container(
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.only(left: 20.0, right: 20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color(0xFF1D1E33),
              ),
              child: Row(
                children: <Widget>[
                  Text('Sanitisers', style: kCartLabel),
                  SizedBox(
                    width: 127.0,
                  ),
                  RoundIconButton(
                    icon: FontAwesomeIcons.plus,
                    onPressed: () {
                      setState(() {
                        sqty++;
                      });
                    },
                  ),
                  Text(
                    sqty.toString(),
                    style: kCartLabel,
                  ),
                  RoundIconButton(
                    icon: FontAwesomeIcons.minus,
                    onPressed: () {
                      setState(() {
                        sqty--;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          SafeArea(
            child: Container(
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.only(left: 20.0, right: 20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color(0xFF1D1E33),
              ),
              child: Row(
                children: <Widget>[
                  Text('Shoe Cover', style: kCartLabel),
                  SizedBox(
                    width: 105.0,
                  ),
                  RoundIconButton(
                    icon: FontAwesomeIcons.plus,
                    onPressed: () {
                      setState(() {
                        shoeCover++;
                      });
                    },
                  ),
                  Text(
                    shoeCover.toString(),
                    style: kCartLabel,
                  ),
                  RoundIconButton(
                    icon: FontAwesomeIcons.minus,
                    onPressed: () {
                      setState(() {
                        shoeCover--;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          SafeArea(
            child: Container(
              padding: EdgeInsets.all(10.0),
              margin: EdgeInsets.only(left: 20.0, right: 20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color(0xFF1D1E33),
              ),
              child: Row(
                children: <Widget>[
                  Text('Head Cover', style: kCartLabel),
                  SizedBox(
                    width: 105.0,
                  ),
                  RoundIconButton(
                    icon: FontAwesomeIcons.plus,
                    onPressed: () {
                      setState(() {
                        headCover++;
                      });
                    },
                  ),
                  Text(
                    headCover.toString(),
                    style: kCartLabel,
                  ),
                  RoundIconButton(
                    icon: FontAwesomeIcons.minus,
                    onPressed: () {
                      setState(() {
                        headCover--;
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          RectangularButton(
            text: 'Checkout',
          )
        ],
      ),
    );
  }
}
