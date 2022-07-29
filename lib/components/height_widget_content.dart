import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class HeightWidgetContent extends StatelessWidget {
  final String _title;
  final int _userHeight;
  final Function _onSlide;

  const HeightWidgetContent(this._title, this._userHeight, this._onSlide);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          _title,
          style: kLabelTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: <Widget>[
            Text(
              _userHeight.toString(),
              style: kNumberTextStyle,
            ),
            Text(
              'cm',
              style: kLabelTextStyle,
            ),
          ],
        ),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            thumbColor: kSliderThumbColor,
            thumbShape: RoundSliderThumbShape(
              enabledThumbRadius: 15,
            ),
            overlayShape: RoundSliderOverlayShape(
              overlayRadius: 30,
            ),
            activeTrackColor: kActiveSliderTrackColor,
            inactiveTrackColor: kInactiveSliderTrackColor,
            overlayColor: kSliderThumbOverlayColor,
          ),
          child: Slider(
            min: 120,
            max: 220,
            value: _userHeight.toDouble(),
            onChanged: (value) {
              _onSlide(value.round());
            },
          ),
        ),
      ],
    );
  }
}
