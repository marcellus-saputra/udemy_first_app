import 'package:flutter/material.dart';

import 'question.dart';
import 'answer.dart';

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
        _questionIndex = (_questionIndex + 1) % _questions.length;
      });
      print(_questionIndex);
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My First App')),
        body: Column(children: <Widget>[
          Question(_questions[_questionIndex]['questionText']),
          ...(_questions[_questionIndex]['answer'] as List<String>)
              .map((answerText) {
            return Answer(answerText, _answerQuestion);
          }).toList()
        ]),
      ),
    );
  }
}
