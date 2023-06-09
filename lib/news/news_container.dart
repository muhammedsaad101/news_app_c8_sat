import 'package:flutter/material.dart';
import 'package:news_app_c8_v3/api_manager/api_manager.dart';
import 'package:news_app_c8_v3/model/NewsResponse.dart';
import 'package:news_app_c8_v3/model/SourceResponse.dart';
import 'package:news_app_c8_v3/news/news_item.dart';

class NewsContainer extends StatelessWidget {
  Source source;
  NewsContainer({required this.source});
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<NewsResponse>(
        future: ApiManager.getNews(source.id ?? ''),
        builder: (context, snapshot){
          //print(source.id);
          if(snapshot.connectionState == ConnectionState.waiting){
            return Center(child: CircularProgressIndicator());
          }
          if(snapshot.hasError){
            return Text('Something went wrong');
          }
          if(snapshot.data?.status != 'ok'){
            return Text(snapshot.data?.message ?? '');
          }
          var newList = snapshot.data?.articles ?? [];
          return Expanded(child: ListView.builder(itemBuilder: (context, index) => NewsItem(news: newList[index],),itemCount: newList.length,) );
        },);
  }
}
