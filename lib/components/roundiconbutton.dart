import 'package:flutter/material.dart';

class RoundIconButtonCustom extends StatelessWidget {
  final IconData icon;
  final Function onPressed;
  final Color fillColor;
  RoundIconButtonCustom(
      {@required this.icon, @required this.onPressed, this.fillColor});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      child: Icon(icon),
      shape: CircleBorder(),
      fillColor: fillColor,
      constraints: BoxConstraints.tightFor(
        width: 40.0,
        height: 40.0,
      ),
    );
  }
}
