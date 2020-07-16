import 'package:flutter/material.dart';
import 'package:dashboard_timeline_ui_demo/data/fake.dart';
import 'package:dashboard_timeline_ui_demo/widget/day_card.dart';
import 'package:dashboard_timeline_ui_demo/pages/base_page.dart';
import 'package:dashboard_timeline_ui_demo/extension/context_extension.dart';

class ListPage extends StatelessWidget {
  ListPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: 'My List',
      childTop: Container(
          padding: EdgeInsets.all(context.pch(1.5)),
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: data.length,
              itemBuilder: (context, index) {
                final day = data[index];
                return DayCard(day: day);
              })),
      child2: Center(
        child: Text('OH LA LA!!'),
      ),
    );
  }
}
