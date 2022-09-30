import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:simple_bmi_calculator/constant.dart';
import 'package:simple_bmi_calculator/components/reusable_card.dart';
import 'package:simple_bmi_calculator/components/bottom_button.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {required this.bmi_result,
      required this.result_text,
      required this.interpretation});

  final String bmi_result;
  final String result_text;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Text(
                'Your Result',
                style: k_title_text_style,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              card_color: k_active_card_color,
              card_child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    result_text.toUpperCase(),
                    style: k_result_text_style,
                  ),
                  Text(
                    bmi_result,
                    style: k_bmi_text_style,
                  ),
                  Text(
                    interpretation,
                    style: k_body_text_style,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              button_title: 'RE-CALCULATE'),
        ],
      ),
    );
  }
}
