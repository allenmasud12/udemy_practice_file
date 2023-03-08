import 'package:flutter/material.dart';
import 'package:udemy_practice/Home/home_page.dart';
import 'package:udemy_practice/screen/Class_2/practice/Class_2_main.dart';
import 'package:udemy_practice/screen/User_data/Tenant_data.dart';

import 'screen/DeliMeals/DelimealsMain.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        accentColor: Colors.amber
      ),
      home: DelimealsMian(),
    );
  }
}

