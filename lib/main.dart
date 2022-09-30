import 'package:flutter/material.dart';
import 'screens/input_page.dart';
import 'screens/screen1.dart';
import 'screens/screen0.dart';
import 'screens/screen2.dart';
import 'screens/result_page.dart';
import 'calculator_brain.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.light(
          primary: Color(0xFF090C22),
        ),
        scaffoldBackgroundColor: Color(0xFF090C22),
      ),
      home: InputPage(),
    );
  }
}
