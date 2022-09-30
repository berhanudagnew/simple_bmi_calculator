import 'package:flutter/material.dart';
import 'constant.dart';

class ReusableIcon extends StatelessWidget {
  ReusableIcon({required this.gender_icon, required this.gender_text});
  final IconData gender_icon;
  final String gender_text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          gender_icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.5,
        ),
        Text(gender_text, style: k_lable_txt_style),
      ],
    );
  }
}
