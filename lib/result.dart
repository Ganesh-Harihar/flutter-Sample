import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function resetHandler;
  Result({this.score,this.resetHandler});
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text('You Did It...!\n Your Score Is:' + score.toString(),
            style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
        ),
        FlatButton(child: Text('Restart Test!',style: TextStyle(color:Colors.blue)), onPressed: resetHandler,)
      ],
    ));
  }
}
