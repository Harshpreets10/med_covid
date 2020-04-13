import 'package:flutter/material.dart';
import 'package:medcovid/components/rectangular_button.dart';
import 'package:medcovid/constants.dart';

class TestDetails extends StatelessWidget {
  final String price;
  final String reqt;
  final String report;
  final String desc;
  final String pdets;

  TestDetails(
      {@required this.price,
      @required this.reqt,
      @required this.report,
      this.desc,
      this.pdets});

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
            margin: EdgeInsets.all(10.0),
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: kActiveColor,
            ),
            child: Row(
              children: <Widget>[
                Text(
                  'Price: $price',
                  style: kCartLabel2,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: kActiveColor,
            ),
            child: Row(
              children: <Widget>[
                Flexible(
                  child: Text(
                    'Pre Test Requirements: $reqt',
                    style: kCartLabel2,
                    softWrap: true,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: kActiveColor,
            ),
            child: Row(
              children: <Widget>[
                Flexible(
                  child: Text(
                    'Report Delivery: $report',
                    style: kCartLabel2,
                    softWrap: true,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: kActiveColor,
            ),
            child: Row(
              children: <Widget>[
                Flexible(
                  child: Text(
                    'Description: $desc',
                    style: kCartLabel2,
                    softWrap: true,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: kActiveColor,
            ),
            child: Row(
              children: <Widget>[
                Flexible(
                  child: Text(
                    'Package Details: $pdets',
                    style: kCartLabel2,
                    softWrap: true,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(40.0, 50.0, 40.0, 0.0),
            child: RectangularButton(
              text: 'Book Test',
              onPressed: () {
                Navigator.pushNamed(context, '/bookTests');
              },
            ),
          ),
        ],
      ),
    );
  }
}
