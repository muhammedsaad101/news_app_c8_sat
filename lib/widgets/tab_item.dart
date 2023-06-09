import 'package:flutter/material.dart';
import 'package:news_app_c8_v3/model/SourceResponse.dart';
import 'package:news_app_c8_v3/model/category_item.dart';
import 'package:news_app_c8_v3/styles/my_theme.dart';

class TabItem extends StatelessWidget {
  Source source;
  bool isSelected;
  TabItem({required this.source, required this.isSelected});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 12),
      padding: EdgeInsets.symmetric(vertical: 6, horizontal: 18),
      decoration: BoxDecoration(
        color: isSelected ? MyThemeData.primaryLightColor : Colors.transparent,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Theme.of(context).primaryColor)
      ),
      child: Text(source.name ??'', style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal, color: isSelected? MyThemeData.whiteColor: MyThemeData.primaryLightColor),),
    );

  }
}
