import 'package:flutter/material.dart';
import 'package:news_app_c8_v3/category/category_details_screen.dart';
import 'package:news_app_c8_v3/category/category_widget.dart';
import 'package:news_app_c8_v3/home/home_drawer.dart';
import 'package:news_app_c8_v3/model/category_item.dart';
import 'package:news_app_c8_v3/settings/settings_tab.dart';
import 'package:news_app_c8_v3/styles/my_theme.dart';

class HomeScreen extends StatefulWidget {
static const String routeName = 'home-screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: MyThemeData.whiteColor,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/pattern.png'),
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text('News App', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: MyThemeData.whiteColor),),
        ),
        drawer: Drawer(
          child: HomeDrawer(onItemSideMenu: onItemSideMenu),
        ),
        body: selectedItemDrawer == HomeDrawer.settings ? SettingsTab() :

        selectedCategory == null ? CategoryWidget(onCategoryClicked: onCategoryClicked) : CategoryDetailsScreen(categoryItem: selectedCategory! ),
      ),
    );
  }

  CategoryItem? selectedCategory = null;

  void onCategoryClicked(CategoryItem category){
    selectedCategory = category;
    setState(() {
      
    });
  }
  int selectedItemDrawer = HomeDrawer.categories; // 1
  void onItemSideMenu(int newSelectedItemDrawer){

    selectedItemDrawer = newSelectedItemDrawer;
    selectedCategory = null;
    Navigator.pop(context);
    //print(selectedItemDrawer);
    setState(() {

    });
  }
}
