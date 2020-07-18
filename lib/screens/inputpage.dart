import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi/components/iconcontent.dart';
import 'package:bmi/components/constants.dart';
import 'package:bmi/components/agecustomcard.dart';
import 'package:bmi/components/calculatebuttonges.dart';
import 'package:bmi/components/calculatorbrain.dart';
import 'package:bmi/components/weightcustomcard.dart';
import 'package:bmi/components/reusablecard.dart';
import 'package:bmi/screens/resultpage.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

enum Gender {
  male,
  female,
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = 150;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: AppBar(
            centerTitle: true,
            title: Text(
              'BMI CALCULATOR',
              style: TextStyle(
                color: Colors.blueAccent,
                fontSize: 20.0,
              ),
              ),
            ),
          ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                  child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      colour: selectedGender == Gender.male
                          ? kMaleActiveColor
                          : kMainContainerColor,
                      customCard: IconContent(
                        iconsType: FontAwesomeIcons.mars,
                        genderName: 'MALE',
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      colour: selectedGender == Gender.female
                          ? kFemaleActiveColor
                          : kMainContainerColor,
                      customCard: IconContent(
                          iconsType: FontAwesomeIcons.venus,
                          genderName: 'FEMALE'),
                    ),
                  ),
                ],
              )),
              Expanded(
                  child: ReusableCard(
                colour: kMainContainerColor,
                customCard: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'HEIGHT',
                      style: kLabelText,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        Text(
                          height.toString(),
                          style: kNumberLabelText,
                        ),
                        Text(
                          'CM',
                          style: kLabelText,
                        )
                      ],
                    ),
                    Slider(
                      value: height.toDouble(),
                      min: 50,
                      max: 220,
                      activeColor: kActiveColor,
                      inactiveColor: kInActiveColor,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  ],
                ),
              )),
              Expanded(
                  child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                      colour: kMainContainerColor,
                      customCard: WeightCustomCard(),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: kMainContainerColor,
                      customCard: AgeCustomCard(),
                    ),
                  ),
                ],
              )),
              CalculateButtonGes(
                buttonName: 'CALCULATE',
                onTap: () {
                  int weight = getweight();
                  print('$weight');
                  CalculatorBrain calc =
                      CalculatorBrain(weight: weight, height: height);
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ResultPage( bmi: calc.calculateBmi(),interpretation: calc.getInterpretation(), result: calc.getResult())));
                },
              )
            ],
          ),
        ));
  }
}
