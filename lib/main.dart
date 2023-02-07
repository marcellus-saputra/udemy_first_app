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
  var _questionIndex = 0;
  var _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answer': [
        'Black',
        'Red',
        'Green',
        'White',
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answer': [
        'Cat',
        'Dog',
        'Cow',
        'Bird',
      ],
    },
    {
      'questionText': 'What\'s your favorite shape?',
      'answer': [
        'Square',
        'Circle',
        'Triangle',
      ],
    },
  ];

  @override
  Widget build(BuildContext context) {
    void _answerQuestion() {
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
      print(_questionIndex);
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
            : Result(),
      ),
    );
  }
}
