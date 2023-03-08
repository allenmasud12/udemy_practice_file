import 'package:flutter/material.dart';
import 'package:udemy_practice/screen/DeliMeals/Category_item.dart';
import 'package:udemy_practice/screen/DeliMeals/DelimealsMain.dart';
import './dummy_data.dart';
class CategoriesScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Delimeals'),
        centerTitle: true,
      ),
      body: GridView(
        padding: EdgeInsets.all(25),
        children: DAMMY_CATEGORIES
            .map(
                (catData) => CategoryItem(
                    catData.title,
                    catData.color,
                )
                )
            .toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3/2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
