import 'package:flutter/material.dart';
import 'constants.dart';
class reusableIcon extends StatelessWidget {

  reusableIcon({@required this.icon, this.label});
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment:MainAxisAlignment.center,
      children: [
        Icon(icon,
          size: 75.0,
          color: Color(0xFF8D8E98),
        ),
        SizedBox(height: 15.0,),
        Text(label,style: klabelTextsyle),

      ],

    );
  }
}