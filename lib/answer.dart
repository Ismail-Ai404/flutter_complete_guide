import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function _direct;
  final count;

  final String question;

  Answer(this.count, this._direct, this.question);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text('$count. $question'),
        onPressed: _direct,
      ),
    );
  }
}
