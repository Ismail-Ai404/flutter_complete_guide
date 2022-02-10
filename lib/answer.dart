import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function _direct;

  Answer(this._direct);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        child: Text('Answer 1'),
        onPressed: _direct,
      ),
    );
  }
}
