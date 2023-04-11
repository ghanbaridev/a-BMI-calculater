import 'package:flutter/material.dart';
import 'constansts.dart';
import 'container.dart';
import 'input_page.dart';
import 'mybutoom.dart';
import 'calculator_fuction.dart';

class Calculatorscreen extends StatelessWidget {
  Calculatorscreen(
      {required this.bmiresylt,
      required this.interpreation,
      required this.resulttext});
  final String bmiresylt;
  final String resulttext;
  final String interpreation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(197, 57, 235, 21),
        title: Text("BMI Caalculator"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Center(
              child: Container(
                child: Text(
                  "You\'r Resoult",
                  style: labletext4,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: mycontainer(
              mycolor: Color(0xff272A4E),
              cardchild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: Text(
                      resulttext,
                      style: TextStyle(
                        fontSize: 22,
                        color: Color(0xff24d876),
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Center(
                    child: Text(
                      bmiresylt,
                      style: Bmitext,
                    ),
                  ),
                  Center(
                    child: Text(
                      interpreation,
                      style: bodyBmitext,
                    ),
                  )
                ],
              ),
            ),
          ),
          mybutoon(
            butoomtext: "Re-Calculate",
            ontap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => InputPage(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
