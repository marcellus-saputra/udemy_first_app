import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _score = 0;
  var _questionIndex = 0;
  var _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answer': [
        {'text': 'Black', 'score': 0},
        {'text': 'Red', 'score': 1},
        {'text': 'Green', 'score': 2},
        {'text': 'White', 'score': 3},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answer': [
        {'text': 'Cat', 'score': 0},
        {'text': 'Dog', 'score': 1},
        {'text': 'Cow', 'score': 2},
        {'text': 'Bird', 'score': 3},
      ],
    },
    {
      'questionText': 'What\'s your favorite shape?',
      'answer': [
        {'text': 'Square', 'score': 0},
        {'text': 'Circle', 'score': 1},
        {'text': 'Triangle', 'score': 2},
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    void _answerQuestion(int score) {
      _score += score;
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
    }

    void _resetQuiz() {
      _score = 0;
      setState(() {
        _questionIndex = 0;
      });
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My First App')),
        body: _questionIndex < _questions.length
            ? Quiz(
                setHandler: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(_score, _resetQuiz),
      ),
    );
  }
}
