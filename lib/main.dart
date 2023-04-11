import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

import 'input_page.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff0C1234),
        scaffoldBackgroundColor: Color(0xff0C1234),
        accentColor: Colors.purple,
      ),
      home: SplashScreen(
          seconds: 3,
          navigateAfterSeconds: InputPage(),
          title: Text(
            "Welcome",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          backgroundColor: Color.fromARGB(255, 233, 175, 68),
          loaderColor: Colors.red),
    );
  }
}
