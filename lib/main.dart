import 'package:flutter/material.dart';

import 'input_page.dart';
import 'calculatescreen.dart';
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
      home: InputPage(),
      routes: {
        'calculeatescreen': (context) => Calculatorscreen(),
        'inputpage': (context) => InputPage(),
      },
    );
  }
}
