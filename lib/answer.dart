import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerQuestion;
  final String answerText;

  Answer(this.answerQuestion, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(2),
      margin: EdgeInsets.symmetric(horizontal: 80),
      child: RaisedButton(
        color: Colors.blue,
        child: Text(
          answerText,
          style: TextStyle(fontSize: 24),
        ),
        onPressed: answerQuestion,
      ),
    );
  }
}
