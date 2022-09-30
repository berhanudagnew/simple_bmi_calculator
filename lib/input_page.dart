import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constant.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selected_gender;
  int height = 180;
  int weigt = 60;
  int age = 19;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
                        ? k_active_card_color
                        : k_inactive_card_color,
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
                      ? k_active_card_color
                      : k_inactive_card_color,
                )),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              card_color: k_active_card_color,
              card_child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                    style: k_lable_txt_style,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        height.toString(),
                        style: k_number_text_style,
                      ),
                      Text(
                        'cm',
                        style: k_lable_txt_style,
                      ),
                    ],
                  ),
                  Expanded(
                    child: SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Color(0xFF8D8E98),
                        thumbColor: Color(0xFFEB1555),
                        overlayColor: Color(0x29EB1555),
                        thumbShape:
                            RoundSliderThumbShape(enabledThumbRadius: 15.0),
                        overlayShape:
                            RoundSliderOverlayShape(overlayRadius: 30.0),
                      ),
                      child: Slider(
                        value: height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        onChanged: (double newValue) {
                          setState(() {
                            height = newValue.round();
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: Row(
            children: [
              Expanded(
                  child: ReusableCard(
                card_color: k_active_card_color,
                card_child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'WEIGHT',
                      style: k_lable_txt_style,
                    ),
                    Text(
                      weigt.toString(),
                      style: k_number_text_style,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundIconButton(
                          onPressed: () {
                            setState(() {
                              weigt--;
                            });
                          },
                          icon: FontAwesomeIcons.minus,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        RoundIconButton(
                          onPressed: () {
                            setState(() {
                              weigt++;
                            });
                          },
                          icon: FontAwesomeIcons.plus,
                        ),
                      ],
                    )
                  ],
                ),
              )),
              Expanded(
                  child: ReusableCard(
                card_color: k_active_card_color,
                card_child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'AGE',
                      style: k_lable_txt_style,
                    ),
                    Text(
                      age.toString(),
                      style: k_number_text_style,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RoundIconButton(
                          onPressed: () {
                            setState(() {
                              age--;
                            });
                          },
                          icon: FontAwesomeIcons.minus,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        RoundIconButton(
                          onPressed: () {
                            setState(() {
                              age++;
                            });
                          },
                          icon: FontAwesomeIcons.plus,
                        ),
                      ],
                    )
                  ],
                ),
              )),
            ],
          )),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/result');
            },
            child: Container(
              alignment: Alignment.center,
              child: Text(
                'CALCULATE',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    fontSize: 25.0),
              ),
              color: k_bottom_container_color,
              height: k_bottom_container_height,
              width: double.infinity,
              margin: EdgeInsets.only(top: 10.0),
            ),
          ),
        ],
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.icon, required this.onPressed});
  final IconData icon;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      onPressed: onPressed,
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
