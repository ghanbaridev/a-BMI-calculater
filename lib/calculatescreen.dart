import 'package:flutter/material.dart';
import 'constansts.dart';
import 'container.dart';
import 'mybutoom.dart';

class Calculatorscreen extends StatelessWidget {
  const Calculatorscreen({Key? key}) : super(key: key);

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
                      "normal",
                      style: resulttext,
                    ),
                  ),
                  Center(
                    child: Text(
                      "20",
                      style: Bmitext,
                    ),
                  ),
                  Center(
                    child: Text(
                      "your bmi is low",
                      style: bodyBmitext,
                    ),
                  )
                ],
              ),
            ),
          ),
          mybutoon(butoomtext: "Re-Calculate", ontap: "inputpage"),
        ],
      ),
    );
  }
}
