import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottom_container_height = 80.0;
const active_card_color = Color(0xFF1D1F33);
const bottom_container_color = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
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
                    card_child: ReusableIcon(),
                    card_color: active_card_color,
                  ),
                ),
                Expanded(
                    child: ReusableCard(
                  card_child: ReusableIcon(),
                  card_color: active_card_color,
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

class ReusableIcon extends StatelessWidget {
  ReusableIcon({required this.gender_icon, required this.gender_text});
  final Icon gender_icon;
  final Text gender_text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          FontAwesomeIcons.mars,
          size: 80.0,
        ),
        SizedBox(
          height: 15.5,
        ),
        Text(
          'MALE',
          style: TextStyle(
            fontSize: 18.0,
            color: Color(0xFF8D8E98),
          ),
        ),
      ],
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.card_color, this.card_child});
  final Color card_color;
  final Widget? card_child;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: card_child,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: card_color,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
