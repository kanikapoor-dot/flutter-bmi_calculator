import 'package:flutter/material.dart';
import 'package:bmi/components/constants.dart';
import 'package:bmi/components/calculatebuttonges.dart';
import 'package:bmi/components/reusablecard.dart';

class ResultPage extends StatelessWidget {
  final String interpretation;
  final String bmi;
  final String result;
  ResultPage({@required this.bmi,@required this.interpretation,@required this.result});

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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left:16.0,top: 8.0),
                  child: Text(
                    'RESULT',
                    style: kTitleText,
                  ),
                ),
              ),
              Expanded(
                flex: 8,
                child: ReusableCard(
                  colour: kMainContainerColor,
                  customCard: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(result.toUpperCase(),style: kResultLabel1,),
                      Text(bmi,style: kResultLabel2,),
                      Text('Healthy BMI range: 18.5kg - 25kg'),
                      Text(interpretation,style: kResultLabel3,textAlign: TextAlign.center,)
                    ],
                  ),
                ),
              ),
              CalculateButtonGes(buttonName: 'CALCULATE AGAIN',onTap: (){
                Navigator.pop(context);
              },)
            ]),
      ),
    );
  }
}
