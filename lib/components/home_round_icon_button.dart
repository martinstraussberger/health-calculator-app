import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, @required this.onPressed});
  final IconData icon;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    //RawMaterialButton --> strg + click
    return RawMaterialButton(
      child: Icon(
        icon,
        color: Color(0xFF3DDAD0),
      ),
      elevation: 2.0,
      onPressed: onPressed,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Colors.white,
    );
  }
}
