import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/constants.dart';

class ResultsPage extends StatelessWidget {
  final String bmiValue;
  final String status;
  final String message;

  const ResultsPage(
      {@required this.bmiValue,
      @required this.status,
      @required this.message});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'BMI CALCULATOR',
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Your Result',
                style: kYourResultTextStyle,
              ),
            ),
          ),
          Expanded(
            child: ReusableCard(
              kActiveCardColor,
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    status,
                    style: kResultsStateTextStyle,
                  ),
                  Text(
                    bmiValue,
                    style: kResultsNumberTextStyle,
                  ),
                  Text(
                    message,
                    style: kResultsMessageTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            title: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
