import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/main.dart';
import 'package:flutter/material.dart';
import 'ReusableCard.dart';


class ResultPage extends StatelessWidget {

  ResultPage({@required this.BmiResult,@required this.inter,@required this.resultText});

  final String BmiResult;
final String resultText;
final String inter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
title: Text("BMI CALCULATOR"),
),
body: Column(
  crossAxisAlignment: CrossAxisAlignment.stretch,
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
  Expanded(child: Container(
    padding: EdgeInsets.all(10.0),
    alignment: Alignment.bottomLeft  ,
    child: Text("YOUR RESULT",
    style: kTitleTextStyle,
      

    ),
  )
  
  ),
  Expanded(
    flex: 5,
    child: ReusableCard(
        color: Color(0xFF131D33),
      cardChild: Column(

        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
Text(resultText,
style: kResultTextStyle,


),
Text(BmiResult,
style: kBmiTextStyle,
),
Text(inter,
style: kbodyTextstyle,
textAlign: TextAlign.center,
)
        ],
      ),


    ),





  ) ,
  BottomButton(

      BotttomTitle: "RE-CALCULATE",
      onTap: (){
        Navigator.pop(context);
      } )
  ],

),



    );
  }
}
