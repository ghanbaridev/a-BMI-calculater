import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class iconcontennt extends StatelessWidget {
  const iconcontennt(
      {required this.containericon, required this.conatinerstring});
  final IconData containericon;
  final String conatinerstring;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Icon(
          containericon,
          size: 50,
        ),
        Text(
          conatinerstring,
          style: TextStyle(
            fontSize: 18,
            color: Color(0xfff8d8e98),
          ),
        ),
      ],
    );
  }
}
