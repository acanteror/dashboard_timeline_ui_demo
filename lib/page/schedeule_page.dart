import 'package:flutter/material.dart';
import 'package:dashboard_timeline_ui_demo/page/base_page.dart';
import 'package:dashboard_timeline_ui_demo/extension/context_extension.dart';

class SchedeulePage extends StatelessWidget {
  SchedeulePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return BasePage(
      title: 'Schedeule',
      childTop: Container(
          padding: EdgeInsets.all(context.pch(.5)),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[Container(color: Colors.white)],
          )),
      child2: Center(
        child: Text('ping!!!!'),
      ),
    );
  }
}
