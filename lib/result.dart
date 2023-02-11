import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultScore >= 8) {
      resultText = 'You are awesome!';
    } else if (resultScore <= 4) {
      resultText = 'You are... not it.';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 36,
            ),
          ),
          ElevatedButton(onPressed: resetHandler, child: Text('Retake Quiz')),
        ],
      ),
    );
  }
}
