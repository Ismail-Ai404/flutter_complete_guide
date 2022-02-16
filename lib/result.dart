import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetquiz;
  Result(this.resultScore, this.resetquiz);

  String get ResultScore {
    return 'You scored $resultScore';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          ResultScore,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        OutlinedButton(
          style: OutlinedButton.styleFrom(
              primary: Colors.brown[400],
              side: BorderSide(color: Colors.black87)),
          onPressed: resetquiz,
          child: Text('Reset Quiz'),
        )
      ],
    ));
  }
}
