import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'roundiconbutton.dart';
import 'constants.dart';

class AgeCustomCard extends StatefulWidget {
  @override
  _AgeCustomCardState createState() => _AgeCustomCardState();
}

class _AgeCustomCardState extends State<AgeCustomCard> {
  int age = 25;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'AGE',
          style: kLabelText,
        ),
        Text(
          age.toString(),
          style: kNumberLabelText,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            RoundIconButtonCustom(
              icon: FontAwesomeIcons.minus,
              fillColor: Colors.deepOrange,
              onPressed: () {
                setState(() {
                  age--;
                });
              },
            ),
            RoundIconButtonCustom(
              icon: FontAwesomeIcons.plus,
              fillColor: Colors.deepOrange,
              onPressed: () {
                setState(() {
                  age++;
                });
              },
            ),
          ],
        )
      ],
    );
  }
}
