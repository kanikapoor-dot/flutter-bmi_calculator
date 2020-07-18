import 'package:flutter/material.dart';
import 'package:bmi/components/constants.dart';


class CalculateButtonGes extends StatelessWidget {
  final String buttonName;
  final Function onTap;

  CalculateButtonGes({@required this.buttonName,@required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        child: Text(
          buttonName,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.w300,
          ),
        ),
        color: Colors.redAccent,
        height: kBottomContainerHeight,
        width: double.infinity,
      ),
    );
  }
}
