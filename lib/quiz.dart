import 'package:flutter/material.dart';

import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final Function answerChosen;
  final int questionIndex;
  final List<Map<String, Object>> questions;
  int count;

  Quiz(
      {@required this.answerChosen,
      @required this.questionIndex,
      @required this.questions,
      @required this.count});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]["answerText"] as List<Map<String, Object>>)
            .map((answer) {
          this.count++;
          return Answer(
              count, () => answerChosen(answer['score']), answer['text']);
        }).toList(),
      ],
    );
  }
}
