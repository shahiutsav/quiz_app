import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'answerText': 'Black', 'score': 10},
        {'answerText': 'Red', 'score': 5},
        {'answerText': 'Green', 'score': 3},
        {'answerText': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'answerText': 'Snake', 'score': 10},
        {'answerText': 'Rabbit', 'score': 5},
        {'answerText': 'Elephant', 'score': 3},
        {'answerText': 'Lion', 'score': 1},
      ],
    },
    {
      'questionText': 'Who\'s your favorite author?',
      'answers': [
        {'answerText': 'Jane Austen', 'score': 10},
        {'answerText': 'William Blake', 'score': 5},
        {'answerText': 'Geoffrey Chaucer', 'score': 3},
        {'answerText': 'John Donne', 'score': 1},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    if (_questionIndex < _questions.length) {
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.grey[300],
          appBar: AppBar(
            title: const Text('A Quiz App'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  questions: _questions,
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                )
              : const Result()),
    );
  }
}
