import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  Question(this.questionText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left:0.0,top: 100.0,right: 0.0,bottom: 0.0),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 20),
        textAlign: TextAlign.center,
      )
    );
  }
}
