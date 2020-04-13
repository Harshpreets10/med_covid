import 'package:flutter/material.dart';
import 'package:medcovid/screens/book_test.dart';
import 'package:medcovid/screens/chat_screen.dart';
import 'package:medcovid/screens/equipments.dart';
import 'package:medcovid/screens/helpline.dart';
import 'package:medcovid/screens/login.dart';
import 'package:medcovid/screens/main_activity.dart';
import 'package:medcovid/screens/sanitisation.dart';
import 'package:medcovid/screens/sign_up.dart';
import 'package:medcovid/screens/splash_screen.dart';
import 'package:medcovid/screens/tests.dart';

void main() => runApp(MedCovid());

class MedCovid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: SplashScreen(),
      routes: {
        '/splash': (context) => SplashScreen(),
        '/login': (context) => Login(),
        '/signup': (context) => SignUp(),
        '/main': (context) => MainActivity(),
        '/equipments': (context) => Equipments(),
        '/helpline': (context) => MyApp(),
        '/tests': (context) => Tests(),
        '/bookTests': (context) => BookTest(),
        '/sanitise': (context) => Sanitisation(),
        '/chatscreen': (context) => ChatScreen()
      },
    );
  }
}
