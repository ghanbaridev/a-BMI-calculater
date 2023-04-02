import 'package:flutter/cupertino.dart';

class mycontainer extends StatelessWidget {
  mycontainer({required this.mycolor, this.cardchild});
  final Color mycolor;
  final Widget? cardchild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardchild,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: mycolor,
      ),
    );
  }
}
//0xff272A4E