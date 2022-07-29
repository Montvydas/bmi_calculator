import 'package:flutter/material.dart';
import 'package:bmi_calculator/enums/gender.dart';
import './reusable_card.dart';

class GenderCard extends ReusableCard {
  final Function _callback;
  final Gender _gender;
  GenderCard(Color color, Widget child, this._callback, this._gender)
      : super(color, child);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _callback(_gender);
      },
      child: super.build(context),
    );
  }
}
