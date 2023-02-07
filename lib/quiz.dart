import 'package:flutter/material.dart';

import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final VoidCallback setHandler;
  final List<Map<String, Object>> questions;
  final int questionIndex;

  Quiz({
    @required this.setHandler,
    @required this.questions,
    @required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      Question(questions[questionIndex]['questionText']),
      ...(questions[questionIndex]['answer'] as List<String>).map((answerText) {
        return Answer(answerText, setHandler);
      }).toList()
    ]);
  }
}
