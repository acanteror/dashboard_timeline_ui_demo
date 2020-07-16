import 'package:dashboard_timeline_ui_demo/pages/base_page.dart';
import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  ListPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: 'My List',
      child1: Container(),
      child2: Center(
        child: Text('OLALA!!'),
      ),
    );
  }
}
