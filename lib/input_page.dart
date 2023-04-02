import 'package:flutter/material.dart';

import 'container.dart';

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
        body: Column(children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: container(
                    mycolor: Color(0xff272A4E),
                  ),
                ),
                Expanded(
                  child: container(
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
                  child: container(
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
                  child: container(
                    mycolor: Color(0xff272A4E),
                  ),
                ),
                Expanded(
                  child: container(
                    mycolor: Color(0xff272A4E),
                  ),
                )
              ],
            ),
          )
        ]));
  }
}
