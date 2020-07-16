import 'package:dashboard_timeline_ui_demo/widget/list/day_list.dart';
import 'package:dashboard_timeline_ui_demo/widget/list/type_note_grid.dart';
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
      child2: TypeNoteGrid(),
    );
  }
}
