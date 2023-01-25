import 'package:flutter/material.dart';
import 'package:your_healthcalculators/input_screens/bfc_input_page_female.dart';
import 'package:your_healthcalculators/input_screens/bfc_input_page_male.dart';
import 'constants.dart';
import 'gender_switch_buttons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

enum Gender {
  male,
  female,
}

// Gender Buttons which are relevant for BFC Calculation
class HighLightGenderBfc extends StatefulWidget {
  @override
  HighLightGenderBfcState createState() => HighLightGenderBfcState();
}

class HighLightGenderBfcState extends State<HighLightGenderBfc> {
  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        GenderSwitchButtons(
          onPress: () {
            setState(() {
              selectedGender = Gender.male;
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => BfcInputPageMale()));
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
        GenderSwitchButtons(
          onPress: () {
            setState(() {
              selectedGender = Gender.female;
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BfcInputPageFemale()),
              );
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
