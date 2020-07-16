import 'package:flutter/material.dart';
import 'package:dashboard_timeline_ui_demo/widget/schedeule/schedeule_header.dart';
import 'package:dashboard_timeline_ui_demo/model/day_model.dart';
import 'package:dashboard_timeline_ui_demo/page/base_page.dart';

class SchedeulePage extends StatelessWidget {
  SchedeulePage({Key key, this.day}) : super(key: key);

  final Day day;

  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: 'Schedeule',
      childTop: SchedeuleHeader(day: day),
      childBody: Center(
        child: Text('pong!!!!'),
      ),
    );
  }
}
