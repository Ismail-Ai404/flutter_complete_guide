import 'package:flutter/material.dart';

import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final VoidCallback answerChosen;
  final int questionIndex;
  final List<Map<String, Object>> questions;

  Quiz(
      {@required this.answerChosen,
      @required this.questionIndex,
      @required this.questions});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]["answerText"] as List<String>)
            .map((answer) {
          int count = 3;
          if (count == 3) count = -1;
          count++;
          return Answer(answerChosen, answer);
        }).toList(),
      ],
    );
  }
}
