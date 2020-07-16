import 'package:dashboard_timeline_ui_demo/widget/day_list.dart';
import 'package:flutter/material.dart';
import 'package:dashboard_timeline_ui_demo/page/base_page.dart';

class ListPage extends StatelessWidget {
  ListPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: 'My List',
      childTop: DayList(),
      child2: Center(
        child: Text('OH LA LA!!'),
      ),
    );
  }
}
