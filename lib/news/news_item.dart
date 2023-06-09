import 'package:flutter/material.dart';
import 'package:news_app_c8_v3/model/NewsResponse.dart';
import 'package:news_app_c8_v3/styles/my_theme.dart';

class NewsItem extends StatelessWidget {
  News news;
  NewsItem({required this.news});
  @override
  Widget build(BuildContext context) {
    return Container(
     clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.network(news.urlToImage ?? ''),
          Text(news.author ?? '', style: TextStyle(fontSize: 12, color: MyThemeData.blackColor, fontWeight: FontWeight.normal),),
          Text(news.title ?? '',style: TextStyle(fontSize: 14, color: MyThemeData.blackColor, fontWeight: FontWeight.normal),),
          Text(news.publishedAt ?? '', textAlign: TextAlign.right,style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18, color: MyThemeData.blackColor),)
        ],
      ),
    );
  }
}
