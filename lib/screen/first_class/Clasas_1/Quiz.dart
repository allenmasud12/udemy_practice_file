import 'package:flutter/material.dart';
import 'package:udemy_practice/screen/first_class/Clasas_1/Button.dart';
import 'package:udemy_practice/screen/first_class/Clasas_1/Question_Text.dart';


class Quiz extends StatelessWidget {
  final List<Map<String, Object>>Qestions;
  final  questionIndex;
  final  answserQuestion;
  Quiz({
      required this.Qestions,
      required this.questionIndex,
      required this.answserQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            QuestionText(Qestions[questionIndex] ['MainQuestion'] as String ),

                ...(Qestions[questionIndex]['Answer'] as List<Map<String, Object>>).map((Answer) {
                  return Button(() =>answserQuestion (Answer['score']), (Answer['text']) as String);
                }).toList(),
          ],
        ),
    Padding(
      padding: const EdgeInsets.all(30.0),
      child: Row(
              mainAxisAlignment: MainAxisAlignment.end,

              children: [
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: 
                    MaterialStateProperty.all(Colors.blue.shade300),
                  foregroundColor: 
                    MaterialStateProperty.all(Colors.white)
                ),
                  onPressed: null, 
                  child: Text("Next"))
              ],
            ),
    ),
      ],
    );

  }
}
