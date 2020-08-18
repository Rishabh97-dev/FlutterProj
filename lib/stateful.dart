import 'package:flutter/material.dart';

import './question.dart';

class MyApping extends StatefulWidget {
  @override
  _MyAppingState createState() => _MyAppingState();
}

class _MyAppingState extends State<MyApping> {
  var questionIndex = 0;
  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What is your favourite color?',
      'What is your favourite sport?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Question(questions[questionIndex]),
        ),
        body: Column(
          children: [
            Text('Buttons: '),
            RaisedButton(
              child: Text('Button 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              onPressed: answerQuestion,
              child: Text('Button 2'),
            ),
          ],
        ),
      ),
    );
  }
}
