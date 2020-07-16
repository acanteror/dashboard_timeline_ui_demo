import 'package:dashboard_timeline_ui_demo/pages/base_page.dart';
import 'package:flutter/material.dart';

class SchedeulePage extends StatelessWidget {
  SchedeulePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: 'Schedeule',
      child1: Container(),
      child2: Center(
        child: Text('ping!!!!'),
      ),
    );
  }
}
