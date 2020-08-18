import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What is your favourite color?',
        'answers': ['Black', 'Red', 'Blue'],
      },
      {
        'questionText': 'What is your favourite sport?',
        'answers': ['Football', 'Cricket', 'Basketball'],
      },
      {
        'questionText': 'What is your favourite animal?',
        'answers': ['Elephant', 'Lion', 'Tortoise'],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: StatusBar('My first app'),
        ),
        body: Column(
          children: [
            Question(
              questions[questionIndex]['questionText'],
            ),
            ...(questions[questionIndex]['answers'] as List<String>).map(
              (answer) {
                return Answer(answerQuestion, answer);
              },
            ).toList(),
          ],
        ),
      ),
    );
  }
}
