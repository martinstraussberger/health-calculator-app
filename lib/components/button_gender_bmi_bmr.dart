import 'package:flutter/material.dart';
import 'constants.dart';
import 'gender_switch_buttons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender {
  male,
  female,
}

// Relevant for BMR Calculation! - Buttons also in BMI but for the Design Question.
class HighLightGenderBmiBmr extends StatefulWidget {
  @override
  HighLightGenderBmiBmrState createState() => HighLightGenderBmiBmrState();
}

class HighLightGenderBmiBmrState extends State<HighLightGenderBmiBmr> {
  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new GenderSwitchButtons(
          onPress: () {
            setState(() {
              selectedGender = Gender.male;
            });
          },
          colour: selectedGender == Gender.male
              ? kActiveCardColour
              : kInactiveCardColour,
          cardChild: Icon(
            FontAwesomeIcons.mars,
          ),
        ),
        SizedBox(width: 20.0), // distance between GenderButtons
        new GenderSwitchButtons(
          onPress: () {
            setState(() {
              selectedGender = Gender.female;
            });
          },
          colour: selectedGender == Gender.female
              ? kActiveCardColour
              : kInactiveCardColour,
          cardChild: Icon(
            FontAwesomeIcons.venus,
          ),
        ),
      ],
    );
  }
}
