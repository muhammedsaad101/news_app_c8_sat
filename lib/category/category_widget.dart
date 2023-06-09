import 'package:flutter/material.dart';
import 'package:news_app_c8_v3/category/category_item_widget.dart';
import 'package:news_app_c8_v3/model/category_item.dart';

class CategoryWidget extends StatelessWidget {
  var categoriesList = CategoryItem.getCategoriesList();
  Function onCategoryClicked;
  CategoryWidget({required this.onCategoryClicked});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18),
      child: Column(
        children: [
          Text('Pick your category \n of interest'),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 18,
                mainAxisSpacing: 18,
              ),
              itemBuilder: (context, index) => InkWell(
                onTap: (){
                  onCategoryClicked(categoriesList[index]);
                },
                child: CategoryItemWidget(
                  categoryItem: categoriesList[index],
                  index: index,
                ),
              ),
              itemCount: categoriesList.length,
            ),
          )
        ],
      ),
    );
  }
}
