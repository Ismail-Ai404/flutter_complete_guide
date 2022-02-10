import 'package:flutter/material.dart';

import 'question.dart';

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
  var questions = ['How are you?', 'How was your day?'];
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
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: _answerChosen,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print('Answer 2 chosen'),
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () {
                //! Multiple commands can be given here
                print('3');
              },
            ),
          ],
        ),
      ),
    );
  }
}
