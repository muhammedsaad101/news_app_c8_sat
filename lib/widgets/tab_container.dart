import 'package:flutter/material.dart';
import 'package:news_app_c8_v3/model/SourceResponse.dart';
import 'package:news_app_c8_v3/news/news_container.dart';
import 'package:news_app_c8_v3/widgets/tab_item.dart';

class TabContainer extends StatefulWidget {
  List<Source> sourcesList;

  TabContainer({required this.sourcesList});

  @override
  State<TabContainer> createState() => _TabContainerState();
}

class _TabContainerState extends State<TabContainer> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: DefaultTabController(
            length: widget.sourcesList.length,
            child: TabBar(
              onTap: (index){
                selectedIndex = index;
                setState(() {

                });
              },
                isScrollable: true,
                indicatorColor: Colors.transparent,
                tabs: widget.sourcesList.map((source) => TabItem(source: source, isSelected: selectedIndex == widget.sourcesList.indexOf(source))).toList()),
          )
        ),
        NewsContainer(source: widget.sourcesList[selectedIndex],),
      ],
    );
  }
}
