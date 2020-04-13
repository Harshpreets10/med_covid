import 'package:flutter/material.dart';

class FormColumn extends StatelessWidget {
  final bool obscureText;
  final String text;
  String value1;

  FormColumn({@required this.obscureText, @required this.text, this.value1});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      color: Color(0xFF1D1E33),
      child: TextField(
        onChanged: (value) {
          value1 = value;
        },
        obscureText: obscureText,
        decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: text,
            fillColor: Color(0xFF8D8E98)),
      ),
    );
  }
}
