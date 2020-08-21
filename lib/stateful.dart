import 'package:flutter/material.dart';

import './question.dart';
import './quiz.dart';
import './result.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;
  var _totalScore = 0;

  final questions = const [
    {
      'questionText': 'What is the color of apple?',
      'answers': [
        {'text': 'Black', 'score': 0},
        {'text': 'Red', 'score': 1},
        {'text': 'Blue', 'score': 0},
      ],
    },
    {
      'questionText': 'What is India\'s national sport?',
      'answers': [
        {'text': 'Football', 'score': 0},
        {'text': 'Hockey', 'score': 1},
        {'text': 'Cricket', 'score': 0},
      ],
    },
    {
      'questionText': 'What is India\'s national animal?',
      'answers': [
        {'text': 'Elephant', 'score': 0},
        {'text': 'Tiger', 'score': 1},
        {'text': 'Lion', 'score': 0},
      ],
    },
    {
      'questionText': 'Who is our current Prime Minister?',
      'answers': [
        {'text': 'Rahul Gandhi', 'score': 0},
        {'text': 'Moraji Desai', 'score': 0},
        {'text': 'Narendra Modi', 'score': 1},
      ],
    },
  ];

  void answerQuestion(int score) {
    _totalScore += score;
    print(questions.length);
    setState(() {
      questionIndex = questionIndex + 1;
    });
  }

  void _resetQuiz() {
    setState(() {
      questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: StatusBar('My first app'),
        ),
        body: questionIndex < questions.length
            ? Quiz(
                questions: questions,
                questionIndex: questionIndex,
                answerQuestion: answerQuestion,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
