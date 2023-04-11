import 'package:flutter/material.dart';
import 'calculatescreen.dart';
import 'constansts.dart';
import 'container.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'calculator_fuction.dart';
import 'iconcontent.dart';
import 'mybutoom.dart';

enum Gendertype { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gendertype? selectedgender;
  int hight = 160;
  int wihgt = 40;
  int age = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedgender = Gendertype.male;
                      });
                    },
                    child: mycontainer(
                      mycolor: selectedgender == Gendertype.male
                          ? activecaedcolore
                          : inactivecardcolor,
                      cardchild: iconcontennt(
                          containericon: FontAwesomeIcons.mars,
                          conatinerstring: "Male"),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (() {
                      setState(() {
                        selectedgender = Gendertype.female;
                      });
                    }),
                    child: mycontainer(
                      cardchild: iconcontennt(
                          containericon: FontAwesomeIcons.venus,
                          conatinerstring: "Female"),
                      mycolor: selectedgender == Gendertype.female
                          ? activecaedcolore
                          : inactivecardcolor,
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: mycontainer(
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Hight",
                          style: labletext,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              hight.toString(),
                              style: labletext2,
                            ),
                            Text("cm", style: labletext),
                          ],
                        ),
                        Slider(
                            value: hight.toDouble(),
                            min: 80,
                            max: 220,
                            activeColor: Color.fromARGB(197, 57, 235, 21),
                            inactiveColor: Color(0xff8d8e98),
                            onChanged: (double newvalue) {
                              setState(() {
                                hight = newvalue.round();
                              });
                            }),
                      ],
                    ),
                    mycolor: Color(0xff272A4E),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: mycontainer(
                    mycolor: Color(0xff272A4E),
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Wight",
                          style: labletext,
                        ),
                        Text(
                          wihgt.toString(),
                          style: labletext2,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            FloatingActionButton(
                              heroTag: 'd',
                              backgroundColor: Color.fromARGB(197, 57, 235, 21),
                              onPressed: () {
                                setState(() {
                                  wihgt++;
                                });
                              },
                              child: Icon(Icons.add),
                            ),
                            FloatingActionButton(
                              heroTag: 'c',
                              backgroundColor: Color.fromARGB(197, 57, 235, 21),
                              onPressed: () {
                                setState(() {
                                  wihgt--;
                                });
                              },
                              child: Icon(Icons.remove),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: mycontainer(
                    mycolor: Color(0xff272A4E),
                    cardchild: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Age",
                          style: labletext,
                        ),
                        Text(
                          age.toString(),
                          style: labletext2,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            FloatingActionButton(
                              heroTag: 'b',
                              backgroundColor: Color.fromARGB(197, 57, 235, 21),
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              child: Icon(Icons.add),
                            ),
                            FloatingActionButton(
                              heroTag: 'a',
                              backgroundColor: Color.fromARGB(197, 57, 235, 21),
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                              child: Icon(Icons.remove),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          mybutoon(
              butoomtext: "Calculate",
              ontap: () {
                Calculator cal = Calculator(h: hight, w: wihgt);

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Calculatorscreen(
                      bmiresylt: cal.calculatebmi(),
                      interpreation: cal.result(),
                      resulttext: cal.interpritation(),
                    ),
                  ),
                );
              }),
        ],
      ),
    );
  }
}
