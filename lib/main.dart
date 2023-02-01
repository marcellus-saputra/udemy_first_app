import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    void answerQuestion() {
      setState(() {
        questionIndex += 1;
      });
      print(questionIndex);
    }

    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
      'What\'s your favorite song?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My First App')),
        body: Column(children: <Widget>[
          Text(questions[questionIndex]),
          ElevatedButton(
            onPressed: answerQuestion,
            child: Text('Answer 1'),
          ),
          ElevatedButton(
            onPressed: answerQuestion,
            child: Text('Answer 2'),
          ),
          ElevatedButton(
            onPressed: answerQuestion,
            child: Text('Answer 3'),
          ),
        ]),
      ),
    );
  }
}
