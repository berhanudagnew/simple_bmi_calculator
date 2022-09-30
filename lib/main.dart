import 'package:flutter/material.dart';
import 'input_page.dart';
import 'screen1.dart';
import 'screen0.dart';
import 'screen2.dart';
import 'result_page.dart';

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
      // home: InputPage(),
      initialRoute: '/',
      routes: {
        '/': (context) => InputPage(),
        '/first': (context) => FirstRoute(),
        '/second': (context) => SecondRoute(),
        '/result': (context) => ResultPage(),
      },
    );
  }
}
