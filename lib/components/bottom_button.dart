import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';


class BottomButton extends StatelessWidget {
  final String title;
  final Function onTap;

  const BottomButton({this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 15.0),
      margin: const EdgeInsets.only(top: 15.0),
      height: 90,
      color: kCalculateButtonColor,
      child: FlatButton(
        child: Text(
          title,
          style: TextStyle(
            fontSize: 23,
            color: Colors.white,
          ),
        ),
        onPressed: onTap,
      ),
    );
  }
}
