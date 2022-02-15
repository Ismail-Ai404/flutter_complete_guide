import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  Result(this.resultScore);

  String get ResultScore {
    return 'You scored $resultScore';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      ResultScore,
      style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
    ));
  }
}
