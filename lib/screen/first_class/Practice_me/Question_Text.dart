import 'package:flutter/material.dart';

class QuestionText extends StatelessWidget {
 final QuestionIndex;

 QuestionText(this.QuestionIndex);

  @override
  Widget build(BuildContext context) {
    return Text(
        QuestionIndex
    );
  }
}
