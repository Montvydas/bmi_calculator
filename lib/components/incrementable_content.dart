import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './circular_button.dart';

class IncrementableContent extends StatelessWidget {
  final String _title;
  final int _value;
  final Function _onIncrement;
  final Function _onDecrement;

  const IncrementableContent(
      this._title, this._value, this._onDecrement, this._onIncrement);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          _title,
          style: kLabelTextStyle,
        ),
        Text(
          _value.toString(),
          style: kNumberTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircularButton(icon: FontAwesomeIcons.minus, onPress: _onDecrement),
            SizedBox(
              width: 10,
            ),
            CircularButton(icon: FontAwesomeIcons.plus, onPress: _onIncrement),
          ],
        )
      ],
    );
  }
}
