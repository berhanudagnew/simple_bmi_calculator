import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';

const bottom_container_height = 80.0;
const active_card_color = Color(0xFF1D1F33);
const inactive_card_color = Color(0xFF111328);
const bottom_container_color = Color(0xFFEB1555);

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selected_gender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selected_gender = Gender.male;
                      });
                    },
                    card_child: ReusableIcon(
                        gender_icon: FontAwesomeIcons.mars,
                        gender_text: 'MALE'),
                    card_color: selected_gender == Gender.male
                        ? active_card_color
                        : inactive_card_color,
                  ),
                ),
                Expanded(
                    child: ReusableCard(
                  onPress: () {
                    setState(() {
                      selected_gender = Gender.female;
                    });
                  },
                  card_child: ReusableIcon(
                      gender_icon: FontAwesomeIcons.venus,
                      gender_text: 'FEMALE'),
                  card_color: selected_gender == Gender.female
                      ? active_card_color
                      : inactive_card_color,
                )),
              ],
            ),
          ),
          Expanded(
              child: ReusableCard(
            card_color: active_card_color,
          )),
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: ReusableCard(
                card_color: active_card_color,
              )),
              Expanded(
                child: ReusableCard(
                  card_color: active_card_color,
                ),
              ),
            ],
          )),
          Container(
            color: bottom_container_color,
            height: bottom_container_height,
            width: double.infinity,
            margin: EdgeInsets.only(top: 10.0),
          ),
        ],
      ),
    );
  }
}
