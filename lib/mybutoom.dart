import 'package:flutter/cupertino.dart';

import 'constansts.dart';

class mybutoon extends StatelessWidget {
  final VoidCallback? ontap;
  final String butoomtext;
  mybutoon({required this.ontap, required this.butoomtext});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.only(bottom: 20),
        color: Color.fromARGB(197, 57, 235, 21),
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: 80,
        child: Center(
          child: Text(
            butoomtext,
            style: labletext3,
          ),
        ),
      ),
    );
  }
}
