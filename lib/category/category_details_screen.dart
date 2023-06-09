import 'package:flutter/material.dart';
import 'package:news_app_c8_v3/api_manager/api_manager.dart';
import 'package:news_app_c8_v3/model/SourceResponse.dart';
import 'package:news_app_c8_v3/model/category_item.dart';
import 'package:news_app_c8_v3/widgets/tab_container.dart';

class CategoryDetailsScreen extends StatelessWidget {
  CategoryItem categoryItem;
  CategoryDetailsScreen({required this.categoryItem});
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<SourceResponse>(
        future: ApiManager.getSources(categoryItem.categoryId),
        builder: (context, snapshot){
          if(snapshot.connectionState == ConnectionState.waiting){
            return Center(child: CircularProgressIndicator());
          }
          if(snapshot.hasError){
            return Text('Something went wrong');
          }
          if(snapshot.data?.status != 'ok'){
            return Text(snapshot.data?.message??'');
          }
          var sourcesList = snapshot.data?.sources ?? [];
          return TabContainer(sourcesList: sourcesList);

        },);
  }
}
