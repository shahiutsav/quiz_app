import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
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
    var questions = ['What\'s your favorite color?', 'What\'s your favorite animal?'];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('A Quiz App'),
        ),
        body: Center(
          child: Column(
            children: [
              Text(
                questions[questionIndex],
              ),
              ElevatedButton(
                onPressed: answerQuestion,
                child: const Text('The Answer 1!'),
              ),
              ElevatedButton(
                onPressed: answerQuestion,
                child: const Text('The Answer 2!'),
              ),
              ElevatedButton(
                onPressed: answerQuestion,
                child: const Text('The Answer 3!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
