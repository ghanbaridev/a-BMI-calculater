import 'package:flutter/material.dart';

import 'container.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'iconcontent.dart';

const activecaedcolore = Color(0xff272A4E);
const inactivecardcolor = Color(0xff111328);

enum Gendertype { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color malecaedcolur = inactivecardcolor;
  Color femalecaedcolur = inactivecardcolor;
  void updatecaedcolur(Gendertype selectedgender) {
    if (selectedgender == Gendertype.male) {
      if (malecaedcolur == inactivecardcolor) {
        malecaedcolur = activecaedcolore;
        femalecaedcolur = inactivecardcolor;
      } else {
        malecaedcolur = inactivecardcolor;
      }
    }
    if (selectedgender == Gendertype.female) {
      if (femalecaedcolur == inactivecardcolor) {
        femalecaedcolur = activecaedcolore;
        malecaedcolur = inactivecardcolor;
      } else {
        femalecaedcolur = inactivecardcolor;
      }
    }
  }

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
                        updatecaedcolur(Gendertype.female);
                      });
                    },
                    child: mycontainer(
                      mycolor: malecaedcolur,
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
                        updatecaedcolur(Gendertype.female);
                      });
                    }),
                    child: mycontainer(
                      cardchild: iconcontennt(
                          containericon: FontAwesomeIcons.venus,
                          conatinerstring: "Female"),
                      mycolor: femalecaedcolur,
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
                  ),
                ),
                Expanded(
                  child: mycontainer(
                    mycolor: Color(0xff272A4E),
                  ),
                )
              ],
            ),
          ),
          Container(
            color: Color(0xffeb1555),
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: 80,
          ),
        ],
      ),
    );
  }
}
