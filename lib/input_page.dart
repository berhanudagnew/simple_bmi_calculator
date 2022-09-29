import 'package:flutter/material.dart';

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
                  child: ReusableWidget(
                    card_color: Color(0xFF1D1F33),
                  ),
                ),
                Expanded(
                    child: ReusableWidget(
                  card_color: Color(0xFF1D1F33),
                )),
              ],
            ),
          ),
          Expanded(
              child: ReusableWidget(
            card_color: Color(0xFF1D1F33),
          )),
          Expanded(
            child: Row(
              children: [
                Expanded(
                    child: ReusableWidget(
                  card_color: Color(0xFF1D1F33),
                )),
                Expanded(
                    child: ReusableWidget(
                  card_color: Color(0xFF1D1F33),
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ReusableWidget extends StatelessWidget {
  ReusableWidget({required this.card_color});
  final Color card_color;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: card_color,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
