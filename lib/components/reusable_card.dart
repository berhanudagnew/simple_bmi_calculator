import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.card_color, this.card_child, this.onPress});
  final Color card_color;
  final Widget? card_child;
  final VoidCallback? onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: card_child,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: card_color,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
