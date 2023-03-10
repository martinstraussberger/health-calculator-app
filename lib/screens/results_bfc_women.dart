import 'package:flutter/material.dart';
import 'package:your_healthcalculators/components/constants.dart';
import 'package:your_healthcalculators/components/reusable_resultcard.dart';
import 'package:your_healthcalculators/components/bottom_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:your_healthcalculators/HomePage.dart';

class BfcResultsPageWomen extends StatelessWidget {
  BfcResultsPageWomen({
    @required this.bfcResult,
    @required this.resultText,
  });

  final String bfcResult;
  final String resultText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //top to bottom vertical layout --> column
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
              Text('Your BFC',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0)),
              SizedBox(width: 10.0),
              Text(
                'Result',
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
//              Expanded(
//                child: Container(
//                  padding: EdgeInsets.all(15.0),
//                  child: Text(
//                    'Your Result',
//                    textAlign: TextAlign.center,
//                    style: kTitleTextStyle,
//                  ),
//                ),
//              ),
              Expanded(
                child: ResultCard(
                  colour: kActiveCardColour,
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        resultText.toUpperCase(),
                        style: kResultTextStyle,
                      ),
                      Text(
                        bfcResult + '%',
                        style: kNumbersStyle,
                      ),
                      Text(
                        'To grasp a bigger picutre:',
                        style: kBodyTextStyle,
                      ),
                      Text(
                        'The leanest athletes typically compete at levels of 14???20% for women',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                ),
              ),
              BottomButton(
                buttonTitle: 'RE-CALCULATE',
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
