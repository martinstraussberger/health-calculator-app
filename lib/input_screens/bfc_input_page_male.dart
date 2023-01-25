import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:your_healthcalculators/HomePage.dart';
import 'package:your_healthcalculators/calculate_bfc_men.dart';
import 'package:your_healthcalculators/components/constants.dart';
import 'package:your_healthcalculators/components/round_icon_button.dart';
import 'package:your_healthcalculators/components/bottom_button.dart';
import 'package:your_healthcalculators/input_screens/bmi_input_page.dart';
import 'package:your_healthcalculators/screens/results_bfc_men.dart';

class BfcInputPageMale extends StatefulWidget {
  @override
  _BfcInputPageMaleState createState() => _BfcInputPageMaleState();
}

class _BfcInputPageMaleState extends State<BfcInputPageMale> {
  Gender selectedGender;

  int height = 180;
  int waist = 70;
  int neck = 30;

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
                Text('BFC',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0)),
                SizedBox(width: 10.0),
                Text(
                  'Calculator for Men',
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
                Center(
                  child: Text('YOUR WAIST'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Center(
                      child: Text(
                        waist.toString(),
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
                    thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
                    overlayShape: RoundSliderOverlayShape(overlayRadius: 27.0),
                  ),
                  child: Slider(
                    value: waist.toDouble(),
                    min: 70.0,
                    max: 240.0,
                    //activeColor: Color(0xFFEB1555),
                    inactiveColor: Colors.grey,
                    onChanged: (double newValue) {
                      setState(() {
                        waist = newValue.round();
                      });
                    },
                  ),
                ),
                SizedBox(height: 10.0),
                Column(
                  children: <Widget>[
                    Text(
                      'YOUR NECK:',
                    ),
                    Text(
                      neck.toString() + 'cm',
                      style: kNumbersStyle,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        RoundIconButton(
                          icon: FontAwesomeIcons.minus,
                          onPressed: () {
                            setState(() {
                              neck--;
                            });
                          },
                        ),
                        RoundIconButton(
                          icon: FontAwesomeIcons.plus,
                          onPressed: () {
                            setState(
                              () {
                                neck++;
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                BottomButton(
                  buttonTitle: 'CALCULATE',
                  onTap: () {
                    //from function
                    CalculateBfcMen calc = CalculateBfcMen(
                        height: height, neck: neck, waist: waist);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BfcResultsPageMen(
                          bfcResultMen: calc.calculateLeanBodyMassMen(),
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
