import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:medcovid/components/main_Image.dart';
import 'package:medcovid/components/rectangular_button.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _auth = FirebaseAuth.instance;
  String email;
  String password;

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
              height: 240.0,
              width: 240.0,
              topWidth: 60.0,
            ),
          ),
          SizedBox(
            height: 70.0,
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
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  fillColor: Color(0xFF8D8E98)),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          RectangularButton(
            text: 'Login',
            onPressed: () async {
              try {
                final user = await _auth.signInWithEmailAndPassword(
                    email: email, password: password);
                if (user != null) {
                  Navigator.pushNamed(context, '/main');
                }
              } catch (e) {
                print(e);
              }
            },
          )
        ],
      ),
    );
  }
}
