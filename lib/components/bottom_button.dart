import 'package:flutter/material.dart';
import 'package:simple_bmi_calculator/constant.dart';

class BottomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String button_title;
  BottomButton({required this.onTap, required this.button_title});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        child: Text(button_title, style: k_large_button_text_sstyle),
        padding: EdgeInsets.only(bottom: 20.0),
        color: k_bottom_container_color,
        height: k_bottom_container_height,
        width: double.infinity,
        margin: EdgeInsets.only(top: 10.0),
      ),
    );
  }
}
