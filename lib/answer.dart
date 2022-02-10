import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function _direct;
  final int _number;

  Answer(this._number, this._direct);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text('Answer  $_number'),
        onPressed: _direct,
      ),
    );
  }
}
