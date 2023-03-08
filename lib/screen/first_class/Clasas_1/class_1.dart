import 'package:flutter/material.dart';
import 'package:udemy_practice/screen/first_class/Clasas_1/Button.dart';
import 'package:udemy_practice/screen/first_class/Clasas_1/Question_Text.dart';
import 'package:udemy_practice/screen/first_class/Clasas_1/Quiz.dart';
import 'package:udemy_practice/screen/first_class/Clasas_1/Result.dart';

void main() {
  runApp(const Class_1());
}

class Class_1 extends StatefulWidget {
  const Class_1({super.key});

  @override
  State<Class_1> createState() => _Class_1State();
}

class _Class_1State extends State<Class_1> {
  final _Qestions = const [
    {
      'MainQuestion': 'পুরুষ বা স্ত্রী নির্দেশক সূত্রকে ব্যাকরণে কী বলে?',
      'Answer':[
        {'text': 'বচন', 'score': 0},
        {'text': 'লিঙ্গ', 'score': 1},
        {'text': 'বাক্য', 'score': 0},
        {'text': 'বাগর্থ', 'score': 0},
      ]
    },
    {
      'MainQuestion': 'নিচের কোনটি তৎসম শব্দ?',
      'Answer':[
        {'text': 'চাঁদ', 'score': 0},
        {'text': 'খোকা', 'score': 0},
        {'text': 'কাঠ', 'score': 0},
        {'text': 'সন্ধ্যা', 'score': 1},
      ]
    },
    {
      'MainQuestion': 'লোকটি ধনী কিন্তু কৃপণ—কোন ধরনের বাক্য?',
      'Answer':[
        {'text': 'জটিল', 'score': 0},
        {'text': 'যৌগিক', 'score': 1},
        {'text': 'সরল', 'score': 0},
        {'text': 'মিশ্র', 'score': 0},
      ]
    },
    {
      'MainQuestion': 'কোন বানানটি শুদ্ধ?',
      'Answer':[
        {'text': 'রূপায়ন', 'score': 0},
        {'text': 'রূপায়ণ', 'score': 1},
        {'text': 'রুপায়ন', 'score': 0},
        {'text': 'রুপায়ণ', 'score': 0},
      ]
    },
    {
      'MainQuestion': 'চলিত রীতির প্রবর্তক কে?',
      'Answer':[
        {'text': 'রবীন্দ্রনাথ ঠাকুর', 'score': 0},
        {'text': 'কাজী নজরুল ইসলাম', 'score': 0},
        {'text': 'প্রমথ চৌধুরী', 'score': 1},
        {'text': 'রুপাঈশ্বরচন্দ্র বিদ্যাসাগরয়ণ', 'score': 0},
      ]
    },
    {
      'MainQuestion': 'পার হইয়া-এর চলিতরূপ কোনটি?',
      'Answer':[
        {'text': 'পার হয়ে', 'score': 1},
        {'text': 'পার হইয়ে', 'score': 0},
        {'text': 'পারি হয়ে', 'score': 0},
        {'text': 'পারিয়া', 'score': 0},
      ]
    },
    {
      'MainQuestion': 'পুরুষ বা স্ত্রী নির্দেশক সূত্রকে ব্যাকরণে কী বলে?',
      'Answer':[
        {'text': 'বচন', 'score': 0},
        {'text': 'লিঙ্গ', 'score': 1},
        {'text': 'বাক্য', 'score': 0},
        {'text': 'বাগর্থ', 'score': 0},
      ]
    },
    {
      'MainQuestion': 'নিচের কোনটি তৎসম শব্দ?',
      'Answer':[
        {'text': 'চাঁদ', 'score': 0},
        {'text': 'খোকা', 'score': 0},
        {'text': 'কাঠ', 'score': 0},
        {'text': 'সন্ধ্যা', 'score': 1},
      ]
    },
    {
      'MainQuestion': 'লোকটি ধনী কিন্তু কৃপণ—কোন ধরনের বাক্য?',
      'Answer':[
        {'text': 'জটিল', 'score': 0},
        {'text': 'যৌগিক', 'score': 1},
        {'text': 'সরল', 'score': 0},
        {'text': 'মিশ্র', 'score': 0},
      ]
    },
    {
      'MainQuestion': 'কোন বানানটি শুদ্ধ?',
      'Answer':[
        {'text': 'রূপায়ন', 'score': 0},
        {'text': 'রূপায়ণ', 'score': 1},
        {'text': 'রুপায়ন', 'score': 0},
        {'text': 'রুপায়ণ', 'score': 0},
      ]
    },
    {
      'MainQuestion': 'চলিত রীতির প্রবর্তক কে?',
      'Answer':[
        {'text': 'রবীন্দ্রনাথ ঠাকুর', 'score': 0},
        {'text': 'কাজী নজরুল ইসলাম', 'score': 0},
        {'text': 'প্রমথ চৌধুরী', 'score': 1},
        {'text': 'রুপাঈশ্বরচন্দ্র বিদ্যাসাগরয়ণ', 'score': 0},
      ]
    },
    {
      'MainQuestion': 'পার হইয়া-এর চলিতরূপ কোনটি?',
      'Answer':[
        {'text': 'পার হয়ে', 'score': 1},
        {'text': 'পার হইয়ে', 'score': 0},
        {'text': 'পারি হয়ে', 'score': 0},
        {'text': 'পারিয়া', 'score': 0},
      ]
    },


  ];
  var _questionIndex = 0;
  var _totalScore = 0;
  void _ResetQuiz(){
    setState(() {
   _questionIndex = 0;
     _totalScore = 0;
    });

  }
  void _answserQuestion(int score){

    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;

    });
    print(_questionIndex);
    if(_questionIndex < _Qestions.length){
      print('we have more Question');
    }else(){
      print("no more question");
    };
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Quiz",
          ),
          centerTitle: true,
          backgroundColor: Colors.teal,
          elevation: 3,
        ),
        body: _questionIndex < _Qestions.length?
            Quiz(
                answserQuestion:_answserQuestion,
                questionIndex:_questionIndex,
                Qestions: _Qestions )
            : Result(_totalScore, _ResetQuiz)
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
