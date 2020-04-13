import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medcovid/components/round_button.dart';

import '../constants.dart';
import 'test_details.dart';

class Tests extends StatefulWidget {
  @override
  _TestsState createState() => _TestsState();
}

class _TestsState extends State<Tests> {
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
            Text(
              'Add tests to your cart!',
              style: kCartfont,
              textAlign: TextAlign.center,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: kActiveColor,
                ),
                margin: EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
                child: Row(
                  children: <Widget>[
                    RoundIconButton(
                      icon: FontAwesomeIcons.infoCircle,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return TestDetails(
                              price: '₹4500',
                              reqt:
                                  'Duly filled Covid-19 clinical information form (Form 44 ) is mandatory.',
                              report: 'Report availability - 48 hours',
                              pdets:
                                  'This test is useful for the detection of Covid-19 virus. Common signs of infection include respiratory symptoms, fever, cough, shortness of breath and breathing difficulties. In more severe cases, infection can cause pneumonia, severe acute respiratory syndrome and kidney failure.');
                        }));
                      },
                    ),
                    Text(
                      'COVID-19 VIRUS QUALITATIVE PCR',
                      style: kCartLabel2,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: kActiveColor,
                ),
                margin: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
                child: Row(
                  children: <Widget>[
                    RoundIconButton(
                      icon: FontAwesomeIcons.infoCircle,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return TestDetails(
                              price: '₹990',
                              reqt: 'No special preparation required.',
                              report:
                                  'Sample by Mon/Wed/Fri 9 AM; report Tue/Thu/Sat',
                              desc:
                                  'Coronaviruses most frequently cause common cold with occasional exacerbation leading to chronic bronchitis and asthma. Overall coronaviruses account for 10-35% of common colds depending on the season. Occasionally an extraordinary outbreak of coronavirus associated illness called SARS has occurred.');
                        }));
                      },
                    ),
                    Text(
                      'RESPIRATORY PANEL',
                      style: kCartLabel2,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: kActiveColor,
                ),
                margin: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
                child: Row(
                  children: <Widget>[
                    RoundIconButton(
                      icon: FontAwesomeIcons.infoCircle,
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return TestDetails(
                              price: '₹1599',
                              reqt: 'Overnight fasting is preferred',
                              report: 'Daily',
                              pdets:
                                  'C-REACTIVE PROTEIN CARDIO; hsCRP.,HEMOGRAM,IMMUNOGLOBULIN IgE, SERUM');
                        }));
                      },
                    ),
                    Text(
                      'POLLUTION RISK CHECK-BASIC',
                      style: kCartLabel2,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: kActiveColor,
                ),
                margin: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
                child: Row(
                  children: <Widget>[
                    RoundIconButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return TestDetails(
                            price: '₹1600',
                            reqt: 'No special preparation required.',
                            report: 'Sample Daily by 11 am; Report Same day',
                            desc:
                                'Atopic allergy implies a familial tendency to manifest conditions like Asthma, Rhinitis, Urticaria and Eczematous dermatitis either alone or in association with the presence of IgE. Some individuals without atopy may develop hypersensitivity reactions due to presence of specific IgE.',
                          );
                        }));
                      },
                      icon: FontAwesomeIcons.infoCircle,
                    ),
                    Text(
                      'ALLERGY SCREEN',
                      style: kCartLabel2,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: kActiveColor,
                ),
                margin: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
                child: Row(
                  children: <Widget>[
                    RoundIconButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return TestDetails(
                              price: '₹3999',
                              reqt: '12 Hour Fasting Mandatory',
                              report: 'Sample Daily by 11 AM; Report Same day',
                              pdets:
                                  'ALBUMIN, SERUM ALKALINE PHOSPHATASE, ALP BILIRUBIN TOTAL, DIRECT & INDIRECT BILIRUBIN, DIRECT BILIRUBIN ,TOTAL CALCIUM, SERUM CHLORIDE, SERUM CHOLESTEROL, TOTAL COMPLETE BLOOD COUNT, CBC CREATININE, SERUM GGTP (GAMMA GLUTAMYL TRANSPEPTIDASE) and others');
                        }));
                      },
                      icon: FontAwesomeIcons.infoCircle,
                    ),
                    Text(
                      'SWASTHFIT SUPER CHECK-UP',
                      style: kCartLabel2,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: kActiveColor,
                ),
                margin: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
                child: Row(
                  children: <Widget>[
                    RoundIconButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return TestDetails(
                            price: '₹4500',
                            reqt: 'Minimum 12 hours fasting is mandatory.',
                            report: 'Daily',
                            pdets:
                                'APOLIPOPROTEINS A1 & B ,COMPLETE BLOOD COUNT; CBC ,C-REACTIVE PROTEIN CARDIO hsCRP,GLUCOSE, FASTING (F),HbA1c; GLYCOSYLATED HEMOGLOBIN,LIPID PROFILE, SCREEN,LIVER & KIDNEY PANEL ,THYROID PROFILE, TOTAL ,VITAMIN B12; CYANOCOBALAMIN,VITAMIN D 25 - HYDROXY',
                          );
                        }));
                      },
                      icon: FontAwesomeIcons.infoCircle,
                    ),
                    Text(
                      'SWASTHFIT TOTAL- HEART CHECK',
                      style: kCartLabel2,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: kActiveColor,
                ),
                margin: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
                child: Row(
                  children: <Widget>[
                    RoundIconButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return TestDetails(
                            price: '₹4500',
                            reqt: 'Minimum 12 hours fasting is mandatory.',
                            report: 'Daily',
                            pdets:
                                'COMPLETE BLOOD COUNT; CBC ,FOLATE (FOLIC ACID), SERUM,GLUCOSE, FASTING (F),HbA1c; GLYCOSYLATED HEMOGLOBIN,IRON STUDIES MONITORING PANEL ,LIPID PROFILE, SCREEN,RETICULOCYTE COUNT,THYROID PROFILE, TOTAL ,VITAMIN B12; CYANOCOBALAMIN,VITAMIN D 25 - HYDROXY',
                          );
                        }));
                      },
                      icon: FontAwesomeIcons.infoCircle,
                    ),
                    Text(
                      'SWASTHFIT TOTAL- IRON CHECK',
                      style: kCartLabel2,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
