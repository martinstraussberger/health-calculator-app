import 'package:flutter/material.dart';
import 'package:your_healthcalculators/HomePage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:your_healthcalculators/components/round_icon_button.dart';
import 'package:your_healthcalculators/components/constants.dart';
import 'package:your_healthcalculators/components/bottom_button.dart';
import '../screens/results_bmi.dart';
import 'package:your_healthcalculators/calculate_bmi.dart';
import 'package:your_healthcalculators/components/gender_switch_buttons.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

  int height = 180;
  int weight = 65;

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
                Text('Your BMI',
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
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(top: 80.0, left: 25.0, right: 20.0),
              children: <Widget>[
                //  Row between Gender Symbols
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: GenderSwitchButtons(
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
                    ),
                    Container(
                      child: GenderSwitchButtons(
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
                    ),
                  ],
                ),
                SizedBox(height: 40.0),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 140.0,
                        child: Column(
                          children: <Widget>[
                            Center(
                              child: Text('YOUR HEIGHT'),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Center(
                                  child: Text(
                                    height.toString(),
                                    style: kNumbersStyle,
                                  ),
                                ),
                                Text(
                                  ' cm',
                                  style: kLabelTextStyle,
                                ),
                              ],
                            ),
                            SliderTheme(
                              // context from build above for default design
                              data: SliderTheme.of(context).copyWith(
                                activeTrackColor: Colors.black87,
                                thumbColor: Colors.black87,
                                overlayColor: Colors.black26,
                                thumbShape: RoundSliderThumbShape(
                                    enabledThumbRadius: 12.0),
                                overlayShape: RoundSliderOverlayShape(
                                    overlayRadius: 27.0),
                              ),
                              child: Slider(
                                value: height.toDouble(),
                                min: 120.0,
                                max: 220.0,
                                //activeColor: Color(0xFFEB1555),
                                inactiveColor: Colors.grey,
                                onChanged: (double newValue) {
                                  setState(() {
                                    height = newValue.round();
                                  });
                                },
                              ),
                            ),
                            //style: kTextStyleNumbers,
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                // SizedBox(height: 20.0),
                Column(
                  children: <Widget>[
                    Text(
                      'WEIGHT',
                    ),
                    Text(
                      weight.toString(),
                      style: kNumbersStyle,
                    ),
                    SizedBox(height: 2.5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RoundIconButton(
                          icon: FontAwesomeIcons.minus,
                          onPressed: () {
                            setState(() {
                              weight--;
                            });
                          },
                        ),
                        RoundIconButton(
                          icon: FontAwesomeIcons.plus,
                          onPressed: () {
                            setState(
                              () {
                                weight++;
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 12.0),
                BottomButton(
                  buttonTitle: 'CALCULATE',
                  onTap: () {
                    //from function
                    CalculateBmi calc = CalculateBmi(
                      height: height,
                      weight: weight,
                    );
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BmiResultsPage(
                                  bmiResult: calc.calculateBMI(),
                                  resultText: calc.getResult(),
                                  interpretation: calc.getInterpretation(),
                                )));
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
