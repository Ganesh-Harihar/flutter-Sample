import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
@override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
int _questionIndex = 0;
var _questions = [
  {
    'questionText' : 'what is your first Name?',
    'answers' : ['Ganesh','Abhi','Amit','Pritam'],
  },
   {
    'questionText' : 'what is your last name?',
    'answers' : ['Harihar','Lokhande','Shinde','Kamble'],
  },
   {
    'questionText' :'what is your favourite animal?',
    'answers' : ['Dog','Cat','Cow','Tiger'],
  },
   {
    'questionText' : 'what is your favourite colour?',
    'answers' : ['Black','Red','Pink','White'],
  }
];
void _addQuestion()
{
  setState(() {
    _questionIndex += 1;
  });
  print(_questionIndex);
}
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: Column(
            children: [
              Question(_questions[_questionIndex]['questionText']),
              ...(_questions[_questionIndex]['answers'] as List<String>).map((answer) {
                  return Answer(_addQuestion,answer);
              }).toList()
            ],
          )),
    );
  }
}
