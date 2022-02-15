import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/quiz.dart';

import 'quiz.dart';
import 'result.dart';

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
  final _questions = const [
    {
      'questionText': 'What is your fav color?',
      'answerText': [
        {
          'text': 'Red',
          'score': 10,
        },
        {
          'text': 'Indica',
          'score': 5,
        },
        {
          'text': 'Purple',
          'score': 3,
        },
        {
          'text': 'Black',
          'score': 2,
        }
      ],
    },
    {
      'questionText': 'What is your fav animal?',
      'answerText': [
        {
          'text': 'Bunny',
          'score': 10,
        },
        {
          'text': 'Ziraffe',
          'score': 5,
        },
        {
          'text': 'Kangaroo',
          'score': 3,
        },
        {
          'text': 'Lion',
          'score': 2,
        }
      ],
    },
    {
      'questionText': 'What is your fav food?',
      'answerText': [
        {
          'text': 'Steak',
          'score': 10,
        },
        {
          'text': 'Chicken',
          'score': 5,
        },
        {
          'text': 'Goat',
          'score': 3,
        },
        {
          'text': 'Fish',
          'score': 2,
        }
      ],
    },
    {
      'questionText': 'Who is your fav person?',
      'answerText': [
        {
          'text': 'Ismail',
          'score': 10,
        },
        {
          'text': 'Ayon',
          'score': 10,
        },
        {
          'text': 'Ismail',
          'score': 10,
        },
        {
          'text': 'Ayon',
          'score': 10,
        }
      ],
    },
  ];
  var questionIndex = 0;
  var scoreMain = 0;
  var count = 0;

  void _answerChosen(int scoreFromOne) {
    scoreMain += scoreFromOne;
    setState(() {
      if (questionIndex <= _questions.length) {
        questionIndex++;
        count = 0;
      }
    });

    print('Answer chosen!');
  }

  List questionNumber = [1, 2, 3, 4];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello world!'),
        ),
        body: questionIndex < _questions.length
            ? Quiz(
                answerChosen: _answerChosen,
                questionIndex: questionIndex,
                questions: _questions,
                count: count,
              )
            : Result(scoreMain),
      ),
    );
  }
}
