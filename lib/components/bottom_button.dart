import 'package:flutter/material.dart';
import 'package:your_healthcalculators/components/constants.dart';

class BottomButton extends StatelessWidget {
  BottomButton({@required this.onTap, @required this.buttonTitle});

  final Function onTap;
  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: kBottomContainerColour,
        margin: EdgeInsets.only(top: 10.0),
        //iphone: padding: EdgeInsets.only(bottom: 10.0),
        width: 100.0,
        height: kBottomContainerHeight,
      ),
    );
  }
}
