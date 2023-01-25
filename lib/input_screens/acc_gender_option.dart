import 'package:flutter/material.dart';
import 'package:your_healthcalculators/HomePage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:your_healthcalculators/components/gender_switch_buttons.dart';
import 'package:your_healthcalculators/components/constants.dart';
import 'package:your_healthcalculators/input_screens/acc_input_page_male.dart';
import 'package:your_healthcalculators/input_screens/acc-input_page_female.dart';

enum Gender {
  male,
  female,
}

class AccGenderSelect extends StatefulWidget {
  @override
  _AccGenderSelectState createState() => _AccGenderSelectState();
}

class _AccGenderSelectState extends State<AccGenderSelect> {
  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15.0, left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(FontAwesomeIcons.home),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomePage()));
                  },
                ),
                Container(
                  width: 125.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 25.0),
          Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Row(
              children: <Widget>[
                Text('Your ACC',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0)),
                SizedBox(width: 10.0),
                Text(
                  'Calculator',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontSize: 25.0),
                ),
              ],
            ),
          ),
          SizedBox(height: 45.0),
          Container(
            // Header Design BorderRadius
            height: MediaQuery.of(context).size.height - 185.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(70.0),
                  topRight: Radius.circular(70.0)),
            ),

            //RECHECK ---> if Centering is needed
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(top: 80.0, left: 25.0, right: 20.0),
              children: <Widget>[
                //  Row between Gender Symbols
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GenderSwitchButtons(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.male;
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AccInputPageMale()));
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
                              MaterialPageRoute(
                                  builder: (context) => AccInputPageWomen()));
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
