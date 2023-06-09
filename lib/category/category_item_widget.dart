import 'package:flutter/material.dart';
import 'package:news_app_c8_v3/model/category_item.dart';
import 'package:news_app_c8_v3/styles/my_theme.dart';

class CategoryItemWidget extends StatelessWidget {
  CategoryItem categoryItem;
  int index;
  CategoryItemWidget({required this.categoryItem, required this.index});
  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: categoryItem.backgroundColor,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(18),
          topLeft: Radius.circular(18),
          bottomRight: Radius.circular(index % 2 == 0 ? 0 : 18),
          bottomLeft: Radius.circular(index % 2 == 0 ? 18 : 0),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(categoryItem.imagePath, height: 100,),
          Text(categoryItem.categoryTitle, style: TextStyle(fontSize: 22, fontWeight: FontWeight.normal, color: MyThemeData.whiteColor),)
        ],
      ),
    );
  }
}
