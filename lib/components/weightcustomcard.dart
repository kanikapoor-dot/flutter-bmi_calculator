import 'package:flutter/material.dart';
import 'package:bmi/components/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi/components/roundiconbutton.dart';

class WeightCustomCard extends StatefulWidget {
  @override
  _WeightCustomCardState createState() => _WeightCustomCardState();
}
int weight = 50;

class _WeightCustomCardState extends State<WeightCustomCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'WEIGHT',
          style: kLabelText,
        ),
        Text(
          weight.toString(),
          style: kNumberLabelText,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            RoundIconButtonCustom(
              icon: FontAwesomeIcons.minus,
              fillColor: Colors.purple,
              onPressed: () {
                setState(() {
                  weight--;
                });
              },
            ),
            RoundIconButtonCustom(
              icon: FontAwesomeIcons.plus,
              fillColor: Colors.purple,
              onPressed: () {
                setState(() {
                  weight++;
                });
              },
            ),
          ],
        )
      ],
    );
  }
}

int getweight(){
  return weight;
}
