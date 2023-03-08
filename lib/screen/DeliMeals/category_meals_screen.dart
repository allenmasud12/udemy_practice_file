import 'package:flutter/material.dart';
class CategoryMealsScreen extends StatelessWidget {
  const CategoryMealsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The Recipes'),
        centerTitle: true,
      ),
      body: Center(
        child: Text("data"),
      ),
    );
  }
}

