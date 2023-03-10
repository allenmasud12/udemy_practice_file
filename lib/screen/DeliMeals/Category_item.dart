import 'package:flutter/material.dart';

import 'category_meals_screen.dart';
class CategoryItem extends StatelessWidget {
final String title;
final Color color;

CategoryItem(this.title, this.color);

void selectCategory(BuildContext ctx){
  Navigator.of(ctx).push(MaterialPageRoute(builder: (_) {
    return CategoryMealsScreen();
  }));
}
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      child: Container(
      padding: EdgeInsets.all(15),
        child: Text(title, style: Theme.of(context).textTheme.subtitle1,),
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [color.withOpacity(0.7),
              color,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          borderRadius: BorderRadius.circular(15),

        ),
      ),
    );
  }
}
