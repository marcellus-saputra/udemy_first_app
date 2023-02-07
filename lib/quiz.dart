import 'package:flutter/material.dart';

import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final Function(int) setHandler;
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
      ...(questions[questionIndex]['answer'] as List<Map<String, Object>>)
          .map((answer) {
        return Answer(answer['text'], () => setHandler(answer['score']));
      }).toList()
    ]);
  }
}
