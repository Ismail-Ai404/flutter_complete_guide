import 'package:flutter/material.dart';

// !!void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void answerChosen() {
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
            Text('Question one'),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerChosen,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: answerChosen,
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: answerChosen,
            ),
          ],
        ),
      ),
    );
  }
}
