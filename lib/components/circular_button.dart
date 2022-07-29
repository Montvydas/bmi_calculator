import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class CircularButton extends StatelessWidget {
  final IconData icon;
  final Function onPress;

  const CircularButton({@required this.icon, this.onPress});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      fillColor: kInactiveButtonColor,
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      child: Icon(
        icon,
      ),
    );
  }
}
