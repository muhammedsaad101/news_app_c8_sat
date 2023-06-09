import 'package:flutter/material.dart';
import 'package:news_app_c8_v3/styles/my_theme.dart';

class CategoryItem{
  String categoryId;
  String categoryTitle;
  String imagePath;
  Color backgroundColor;
  CategoryItem({
    required this.categoryId,
    required this.categoryTitle,
    required this.imagePath,
    required this.backgroundColor
});

  static List<CategoryItem> getCategoriesList(){
    return [

      CategoryItem(
          categoryId: 'sports',
          categoryTitle: 'Sports',
          imagePath: 'assets/images/sports.png',
          backgroundColor: MyThemeData.redColor),
      CategoryItem(
          categoryId: 'general',
          categoryTitle: 'General',
          imagePath: 'assets/images/Politics.png',
          backgroundColor: MyThemeData.darkBlueColor),
      CategoryItem(
          categoryId: 'health',
          categoryTitle: 'Health',
          imagePath: 'assets/images/health.png',
          backgroundColor: MyThemeData.pinkColor),
      CategoryItem(
          categoryId: 'entertainment',
          categoryTitle: 'Entertainment',
          imagePath: 'assets/images/environment.png',
          backgroundColor: MyThemeData.blueColor),
      CategoryItem(
          categoryId: 'business',
          categoryTitle: 'Business',
          imagePath: 'assets/images/bussines.png',
          backgroundColor: MyThemeData.brownColor),
      CategoryItem(
          categoryId: 'technology',
          categoryTitle: 'Technology',
          imagePath: 'assets/images/environment.png',
          backgroundColor: MyThemeData.blueColor),
      CategoryItem(
          categoryId: 'science',
          categoryTitle: 'Science',
          imagePath: 'assets/images/science.png',
          backgroundColor: MyThemeData.yellowColor),



    ];
  }

}