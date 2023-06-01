
import 'dart:math';

import 'package:flutter/cupertino.dart';

class Calculator_Brain{

  Calculator_Brain({@required this.height, @required this.weight});

final int  height;
final int  weight;

double  _bmi;

String Calculate_BMI(){

   _bmi= weight / pow(height/100,2);
  return _bmi.toStringAsFixed(1);


}
String GetResult(){

  if(_bmi>=25){

return "Overweight";

  }else if (_bmi>18.5){

    return "NORMAL";

  }else{

    return "UNDERWEIGHT";
  }


}
  String Getintert(){

    if(_bmi>=25){

      return "YOU HAVE HIGHER BODY-WEIGHT TRY TO DO EXERCISE  MORE";

    }else if (_bmi>18.5){

      return "YOUR BODY WEIGHT IS PERFECT";

    }else{

      return "YOU HAVE LOWER BODY-WEIGHT TRY TO EAT MORE";
    }


  }

}