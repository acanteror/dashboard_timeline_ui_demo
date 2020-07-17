import 'package:flutter/material.dart';
import 'package:dashboard_timeline_ui_demo/widget/list/day_list.dart';
import 'package:dashboard_timeline_ui_demo/widget/list/type_note_grid.dart';
import 'package:dashboard_timeline_ui_demo/page/base_page.dart';

class ListPage extends StatelessWidget {
  ListPage({Key key}) : super(key: key);

  final List<Widget> _actions = <Widget>[
    IconButton(
      icon: Icon(Icons.replay),
      onPressed: () {},
    )
  ];

  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: 'My List',
      actions: _actions,
      childTop: DayList(),
      childBody: TypeNoteGrid(),
    );
  }
}
