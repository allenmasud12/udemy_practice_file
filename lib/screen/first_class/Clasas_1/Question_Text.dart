import 'package:flutter/material.dart';

class QuestionText extends StatelessWidget {
  final String QuestionText1;

  QuestionText(this.QuestionText1);

  @override
  Widget build(BuildContext context) {
    return Text(QuestionText1, style: TextStyle(fontSize: 20),);
  }
}
