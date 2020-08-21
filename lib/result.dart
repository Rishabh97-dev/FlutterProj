import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resultQuiz;

  Result(this.resultScore, this.resultQuiz);

  String get resultPhrase {
    String resultText;
    if (resultScore == 4) {
      resultText = 'Congratulations!, you scored full marks';
    } else if (resultScore == 3) {
      resultText = 'Excellent!, you scored 3/4';
    } else if (resultScore == 2) {
      resultText = 'Good!, you scored 2/4';
    } else if (resultScore == 1) {
      resultText = 'You scored 1/4, can do better!';
    } else {
      resultText = 'You got all answers wrong, Work harder!!!';
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
                color: Colors.red, fontSize: 32, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz'),
            textColor: Colors.blue,
            onPressed: resultQuiz,
          )
        ],
      ),
    );
  }
}
