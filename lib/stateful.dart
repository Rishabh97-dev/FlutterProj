import 'package:flutter/material.dart';

import './question.dart';

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
      'What is your favourite color?',
      'What is your favourite sport?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: StatusBar('My first app'),
        ),
        body: Column(
          children: [
            Question(
              questions[questionIndex],
            ),
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
