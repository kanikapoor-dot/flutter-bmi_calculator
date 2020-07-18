import 'package:flutter/material.dart';
import 'package:bmi/components/constants.dart';

class IconContent extends StatelessWidget {
  final IconData iconsType;
  final String genderName;

  IconContent({@required this.iconsType, @required this.genderName});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconsType,
          size: 60.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          genderName,
          style: kLabelText,
        )
      ],
    );
  }
}