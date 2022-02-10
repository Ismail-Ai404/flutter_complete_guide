import 'package:flutter/material.dart';

import 'question.dart';
import 'answer.dart';

// !!void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var questions = [
    {
      'questionText': 'What is your fav color?',
      'answerText': ['Red', 'Indica', 'Purple', 'Black'],
    },
    {
      'questionText': 'What is your fav animal?',
      'answerText': ['Giraffe', 'Lion', 'Bunny', 'Hippopotamus'],
    },
    {
      'questionText': 'What is your fav food?',
      'answerText': ['Steak', 'Chicken', 'Burger', 'Fries'],
    },
    {
      'questionText': 'Who is your fav person?',
      'answerText': ['Ismail', 'Ayon', 'Ismail', 'Ayon'],
    },
  ];
  var questionIndex = 0;

  void _answerChosen() {
    setState(() {
      if (questionIndex < 1) questionIndex++;
    });

    print('Answer chosen!');
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello world!'),
        ),
        body: Column(
          children: [
            Question(questions[questionIndex]),
            Answer(1, _answerChosen),
            Answer(2, _answerChosen),
            Answer(3, _answerChosen),
          ],
        ),
      ),
    );
  }
}
