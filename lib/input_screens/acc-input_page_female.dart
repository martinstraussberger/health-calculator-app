import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:your_healthcalculators/HomePage.dart';
import 'package:your_healthcalculators/calculate_acc_women.dart';
import 'package:your_healthcalculators/components/constants.dart';
import 'package:your_healthcalculators/components/round_icon_button.dart';
import 'package:your_healthcalculators/components/bottom_button.dart';
import 'package:your_healthcalculators/input_screens/bmi_input_page.dart';
import 'package:your_healthcalculators/screens/results_acc_women.dart';

class AccInputPageWomen extends StatefulWidget {
  @override
  _AccInputPageWomenState createState() => _AccInputPageWomenState();
}

class _AccInputPageWomenState extends State<AccInputPageWomen> {
  bool ex1 = false;
  bool ex2 = false;
  bool ex3 = false;


  void _ex1Changed(bool value) => setState(() => ex1 = value);
  void _ex2Changed(bool value) => setState(() => ex2 = value);
  void _ex3Changed(bool value) => setState(() => ex3 = value);

  Gender selectedGender;

  int height = 180;
  int weight = 75;
  int age = 19;
  int year;

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
                Text('ACC',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0)),
                SizedBox(width: 10.0),
                Text(
                  'Calculator for Women',
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
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: 120.0,
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
                                    style: kBfcSliderSize,
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
                                max: 240.0,
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
                Column(
                  children: <Widget>[
                    Text(
                      'YOUR WEIGHT:',
                    ),
                    Text(
                      weight.toString() + 'kg',
                      style: kNumbersStyle,
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      mainAxisSize: MainAxisSize.min,
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
                SizedBox(height: 30.0),
                Column(
                  children: <Widget>[
                    Text(
                      'YOUR AGE:',
                    ),
                    Text(
                      age.toString(),
                      style: kNumbersStyle,
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RoundIconButton(
                          icon: FontAwesomeIcons.minus,
                          onPressed: () {
                            setState(() {
                              age--;
                            });
                          },
                        ),
                        RoundIconButton(
                          icon: FontAwesomeIcons.plus,
                          onPressed: () {
                            setState(
                              () {
                                age++;
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 50.0),
                Container(
                  padding: EdgeInsets.all(15.0),
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text('Exercise: 1-2 times/week'),
                        Checkbox(
                          value: ex1,
                          onChanged: _ex1Changed,
                          activeColor: Color(0xFF249D7D),
                        ),
                        Text('Exercise: 2-3 times/week'),
                        Checkbox(
                          value: ex2,
                          onChanged: _ex2Changed,
                          activeColor: Color(0xFF249D7D),
                        ),
                        Text('Exercise: 3-5 times/week'),
                        Checkbox(
                            value: ex3,
                            onChanged: _ex3Changed,
                            activeColor: Color(0xFF249D7D)),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                BottomButton(
                  buttonTitle: 'CALCULATE',
                  onTap: () {
                    //from function
                    CalculateAccWomen calc = CalculateAccWomen(
                        height: height,
                        weight: weight,
                        age: age,
                        ex1: ex1,
                        ex2: ex2,
                        ex3: ex3);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AccResultPageWomen(
                          accResultWomen:
                              calc.calculateActiveCaloricNeedWomen(),
                          resultText: calc.getResult(),
                        ),
                      ),
                    );
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
