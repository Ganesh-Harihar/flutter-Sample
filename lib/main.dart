import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';
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
  int _score = 0;
  var _questions = [
    {
      'questionText': 'what is your first Name?',
      'answers': ['Ganesh', 'Abhi', 'Amit', 'Pritam'],
    },
    {
      'questionText': 'what is your last name?',
      'answers': ['Harihar', 'Lokhande', 'Shinde', 'Kamble'],
    },
    {
      'questionText': 'what is your favourite animal?',
      'answers': ['Dog', 'Cat', 'Cow', 'Tiger'],
    },
    {
      'questionText': 'what is your favourite colour?',
      'answers': ['Black', 'Red', 'Pink', 'White'],
    }
  ];
  void _addQuestion(String answer) {
    if(_questionIndex == 0 && answer == 'Ganesh')
    _score += 1;
    else if(_questionIndex == 1 && answer == 'Harihar')
    _score += 1;
    else if(_questionIndex == 2 && answer == 'Tiger')
    _score += 1;
    else if(_questionIndex == 3 && answer == 'Red')
    _score += 1;

    setState(() {
      _questionIndex += 1;
    });
    
    print(_score);
  }

  void resetTest()
  {
    setState(() {
      _questionIndex = 0;
      _score = 0;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  addQuestion: _addQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              : Result(score:_score,resetHandler: resetTest,)
      ),
    );
  }
}
