import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:medcovid/components/form_column.dart';
import 'package:medcovid/components/main_Image.dart';
import 'package:medcovid/components/rectangular_button.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String email;
  String password;
  final _auth = FirebaseAuth.instance;

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
              width: 140.0,
              height: 140.0,
              topWidth: 20.0,
            ),
          ),
          FormColumn(
            obscureText: false,
            text: 'Name',
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            color: Color(0xFF1D1E33),
            child: TextField(
              onChanged: (value) {
                email = value;
              },
              obscureText: false,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'E-mail',
                  fillColor: Color(0xFF8D8E98)),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            color: Color(0xFF1D1E33),
            child: TextField(
              onChanged: (value) {
                password = value;
              },
              obscureText: true,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Phone Number',
                  fillColor: Color(0xFF8D8E98)),
            ),
          ),
          FormColumn(
            obscureText: true,
            text: 'Confirm Password',
          ),
          Container(
            margin: EdgeInsets.all(10.0),
            color: Color(0xFF1D1E33),
            child: TextField(
              obscureText: false,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Phone Number',
                  fillColor: Color(0xFF8D8E98)),
            ),
          ),
          FormColumn(
            obscureText: false,
            text: 'Address',
          ),
          FormColumn(
            obscureText: false,
            text: 'Blood Group',
          ),
          RectangularButton(
            onPressed: () async {
              try {
                final newUser = await _auth.createUserWithEmailAndPassword(
                    email: email, password: password);
                if (newUser != null) {
                  Navigator.pushNamed(context, '/main');
                }
              } catch (e) {
                print(e);
              }
            },
            text: 'Sign In',
          )
        ],
      ),
    );
  }
}
