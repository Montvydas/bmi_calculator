import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:bmi_calculator/enums/gender.dart';
import 'package:bmi_calculator/constants.dart';

import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/components/icon_content.dart';
import 'package:bmi_calculator/components/height_widget_content.dart';
import 'package:bmi_calculator/components/gender_card.dart';
import 'package:bmi_calculator/components/incrementable_content.dart';
import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/calculator_brain.dart';

import 'results_page.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int _height = 174;
  Gender _selectedGender;
  int _age = 25;
  int _weight = 74;

  void _updateUserHeight(int newHeight) {
    setState(() {
      _height = newHeight;
    });
  }

  void _updateGenderCard(Gender selectedGender) {
    setState(
      () {
        _selectedGender = selectedGender;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GenderCard(
                    _selectedGender == Gender.MALE
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    IconContent(
                      FontAwesomeIcons.mars,
                      'MALE',
                    ),
                    _updateGenderCard,
                    Gender.MALE,
                  ),
                ),
                Expanded(
                  child: GenderCard(
                    _selectedGender == Gender.FEMALE
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    IconContent(
                      FontAwesomeIcons.venus,
                      'FEMALE',
                    ),
                    _updateGenderCard,
                    Gender.FEMALE,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: ReusableCard(
              kActiveCardColor,
              HeightWidgetContent(
                'HEIGHT',
                _height,
                _updateUserHeight,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    kActiveCardColor,
                    IncrementableContent(
                      'WEIGHT',
                      _weight,
                      () {
                        setState(
                          () {
                            _weight--;
                          },
                        );
                      },
                      () {
                        setState(
                          () {
                            _weight++;
                          },
                        );
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    kActiveCardColor,
                    IncrementableContent(
                      'AGE',
                      _age,
                      () {
                        setState(
                          () {
                            _age--;
                          },
                        );
                      },
                      () {
                        setState(
                          () {
                            _age++;
                          },
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            title: 'CALCULATE',
            onTap: () {
              var calc = CalculatorBrain(height: _height, weight: _weight);
              calc.getBmi();
              var results = calc.getResults();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultsPage(
                    bmiValue: calc.getBmi(),
                    status: results[0],
                    message: results[1],
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
