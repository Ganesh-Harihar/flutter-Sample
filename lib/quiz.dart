import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function addQuestion;
  final int questionIndex;
  Quiz(
      {@required this.questions,
      @required this.addQuestion,
      @required this.questionIndex});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Question(questions[questionIndex]['questionText']),
          ...(questions[questionIndex]['answers'] as List<String>)
              .map((answer) {
            return Answer(()=>addQuestion(answer), answer);
          }).toList()
        ],
      ),
    );
  }
}
