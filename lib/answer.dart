import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function _direct;
  final int _number;
  final String question;

  Answer(this._number, this._direct, this.question);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text('$_number. $question'),
        onPressed: _direct,
      ),
    );
  }
}
