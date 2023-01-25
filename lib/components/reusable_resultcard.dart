import 'package:flutter/material.dart';

class ResultCard extends StatelessWidget {
  //using statement this.colour for color
  //make a it required to refactor code with using the same attribute for Reusable.
  ResultCard({@required this.colour, this.cardChild, this.onPress});
  //final is important makes property for immutable (not changeable)
  final Color colour;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
      ),
    );
  }
}
