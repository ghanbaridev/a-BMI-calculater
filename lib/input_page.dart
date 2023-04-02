import 'package:flutter/material.dart';

import 'container.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'mycontainerco;umn.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                  child: mycontainer(
                    mycolor: Color(0xff272A4E),
                    cardchild: iconcontennt(),
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
