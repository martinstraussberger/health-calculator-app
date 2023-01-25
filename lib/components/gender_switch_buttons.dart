import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

//--------------Imported in Calculator Pages with Gender Buttons -------------------
//class GenderSwitchButtons extends StatelessWidget {
//  GenderSwitchButtons({
//    @required this.icon,
//    @required this.onPress,
//    @required this.colour,
//  });
////  @required this.onTap
//  final Color colour;
//  final IconData icon;
//  final Function onPress;
////  final GestureTapCallback onTap;
//
//  @override
//  Widget build(BuildContext context) {
//    // for selecting Gender
//    return RawMaterialButton(
//      child: Icon(
//        icon,
//        color: Colors.black,
//        size: 30.0,
//      ),
//      elevation: 2.0,
//      onPressed: onPress,
//      constraints: BoxConstraints.tightFor(
//        width: 56.0,
//        height: 56.0,
//      ),
//      shape: CircleBorder(),
//      fillColor: Colors.white,
//    );
//  }
//}

class GenderSwitchButtons extends StatelessWidget {
  //using statement this.colour for color
  //make a it required to refactor code with using the same attribute for Reusable.
  GenderSwitchButtons(
      {@required this.colour, this.cardChild, this.onPress, this.icon});
  //final is important makes property for immutable (not changeable)
  final Color colour;
  final Widget cardChild;
  final Function onPress;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        height: 60.0,
        width: 80.0,
        margin: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
            //shape: BoxShape.circle,
            color: colour,
            border: Border.all(
              color: Colors.black26,
            ),
            borderRadius: BorderRadius.circular(20.0)),
      ),
    );
  }
}
