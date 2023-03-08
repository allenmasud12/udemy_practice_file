import 'package:flutter/material.dart';
import 'package:udemy_practice/screen/first_class/Clasas_1/Question_Text.dart';
import './Button_Style.dart';
class mainP extends StatefulWidget {
  @override
  State<mainP> createState() => _mainPState();
}

class _mainPState extends State<mainP> {
 var QuestionAnswe = 0;

 void AnswerQuestion(){
   setState(() {
     QuestionAnswe = QuestionAnswe + 1;

   });
   print(QuestionAnswe);


}

 var MainQuestion = [ {
   'QuestionMap': 'What\'s your name?',
   'Answers':['rohim', 'korim','rakib','sakib'],
 },
   {
     'QuestionMap': 'What\'s your fevourit colour?',
     'Answers':['red', 'blue','orange','black'],
   },
   {
     'QuestionMap': 'What\'s your fevourit book?',
     'Answers':['english', 'bangla','math','ict'],
   },


 ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Quiz App'
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          QuestionText(MainQuestion[QuestionAnswe]['QuestionMap'] as String),
          ...(MainQuestion[QuestionAnswe]['Answers'] as List<String>).map((Answer){
            return AnsBtn(AnswerQuestion, Answer);
          }).toList()
        ],
      ),

    );
  }
}
