import 'package:flutter/material.dart';
import 'package:news_app_c8_v3/styles/my_theme.dart';

class HomeDrawer extends StatelessWidget {
  static const int categories = 1;
  static int settings = 2;
  Function onItemSideMenu;
  HomeDrawer({required this.onItemSideMenu});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.2,
              color: Theme.of(context).primaryColor,
              child: Text(
                'News App!',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: MyThemeData.whiteColor),
              )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                onItemSideMenu(categories);
              },
              child: Row(
                children: [
                  Icon(
                    Icons.list,
                    size: 30,
                    color: MyThemeData.blackColor,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Categories',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: MyThemeData.blackColor),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                onItemSideMenu(settings);
              },
              child: Row(
                children: [
                  Icon(
                    Icons.settings,
                    size: 30,
                    color: MyThemeData.blackColor,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    'Settings',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: MyThemeData.blackColor),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
