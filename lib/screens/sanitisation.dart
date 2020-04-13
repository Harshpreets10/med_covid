import 'package:flutter/material.dart';
import 'package:flutter_awesome_alert_box/flutter_awesome_alert_box.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:medcovid/components/rectangular_button.dart';

import '../constants.dart';

class Sanitisation extends StatefulWidget {
  @override
  _SanitisationState createState() => _SanitisationState();
}

class _SanitisationState extends State<Sanitisation> {
  List _range = [
    "<900sq ft : ₹3999",
    "900sq ft - 2000sq ft : ₹4999",
    ">2000sq ft : 5999"
  ];
  String _currentRange;

  List<DropdownMenuItem<String>> _dropDownMenuItems;

  @override
  void initState() {
    _dropDownMenuItems = getDropDownMenuItems();
    _currentRange = _dropDownMenuItems[0].value;
    super.initState();
  }

  List<DropdownMenuItem<String>> getDropDownMenuItems() {
    List<DropdownMenuItem<String>> items = new List();
    for (String range in _range) {
      items.add(new DropdownMenuItem(value: range, child: new Text(range)));
    }
    return items;
  }

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
            margin: EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 10.0),
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: kActiveColor,
            ),
            child: Text(
              'We have certified professionals who will sanitise each and every corner of your premises with the best and latest equipments. Select a Date and Time to book now!',
              style: kCartfont,
              textAlign: TextAlign.center,
              softWrap: true,
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 10.0),
            padding: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: kActiveColor,
            ),
            child: Column(
              children: <Widget>[
                Text(
                  'Select a Range:',
                  style: kCartLabel,
                ),
                new DropdownButton(
                  value: _currentRange,
                  items: _dropDownMenuItems,
                  onChanged: changedDropDownItem,
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
                RectangularButton(
                  onPressed: () {
                    SuccessBgAlertBox(
                      context: context,
                      title: 'Appointment Booked',
                      infoMessage: 'Your Sanitisation has been booked!',
                    );
                  },
                  text: 'Book',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void changedDropDownItem(String selectedRange) {
    setState(() {
      _currentRange = selectedRange;
    });
  }
}
