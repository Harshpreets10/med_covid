import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:medcovid/components/rectangular_button.dart';

import '../constants.dart';

class BookTest extends StatefulWidget {
  @override
  _BookTestState createState() => _BookTestState();
}

class _BookTestState extends State<BookTest> {
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
            margin: EdgeInsets.all(20.0),
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: kActiveColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  'Select a Date:',
                  style: kCartLabel,
                ),
                GestureDetector(
                  onTap: () {
                    DatePicker.showDatePicker(
                      context,
                      showTitleActions: true,
                      minTime: DateTime.now(),
                      maxTime: DateTime.now().add(new Duration(days: 10)),
                      onChanged: (date) {
                        print('change $date');
                      },
                      onConfirm: (date) {
                        Text(
                          'confirm $date',
                          style: kCartLabel,
                        );
                      },
                      currentTime: DateTime.now(),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.all(20.0),
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: kGrayColor,
                    ),
                    child: Text(
                      'Select Date',
                      style: kCartLabel2,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(20.0),
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: kActiveColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                  'Select Time:',
                  style: kCartLabel,
                ),
                GestureDetector(
                  onTap: () {
                    DatePicker.showTimePicker(context, showTitleActions: true,
                        onChanged: (date) {
                      print('change $date in time zone ' +
                          date.timeZoneOffset.inHours.toString());
                    }, onConfirm: (date) {
                      print('confirm $date');
                    }, currentTime: DateTime.now());
                  },
                  child: Container(
                    margin: EdgeInsets.all(20.0),
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: kGrayColor,
                    ),
                    child: Text(
                      'Select Time',
                      style: kCartLabel2,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 250.0),
            child: RectangularButton(
              text: 'Done',
              onPressed: () {
                Navigator.popAndPushNamed(context, '/main');
              },
            ),
          ),
        ],
      ),
    );
  }
}
