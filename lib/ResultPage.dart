import 'package:BMI_Calculator/OurCard.dart';
import 'package:BMI_Calculator/constans.dart';
import 'package:BMI_Calculator/main.dart';
import 'package:flutter/material.dart';
import 'constans.dart';

class ResultPage extends StatelessWidget {
  ResultPage(
      {@required this.bmiText,
      @required this.bmiResult,
      @required this.bmiAdvice});
  final String bmiResult;
  final String bmiText;
  final String bmiAdvice;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: OurCard(
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      bmiText,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: bottomColor,
                      ),
                    ),
                    Text(
                      bmiResult,
                      style: TextStyle(
                        fontSize: 100,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Text(
                      bmiAdvice,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
                clr: activeColor),
          ),
          OurButton(
            onTap: () {
              Navigator.pop(context);
            },
            buttonName: 'Re-Calculate',
          ),
        ],
      ),
    );
  }
}
