import 'package:flutter/material.dart';
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
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    )),
                margin: EdgeInsets.all(context.pch(1)),
                padding: EdgeInsets.all(context.pch(1)),
                width: context.pcw(10),
                child: Column(
                  children: <Widget>[Text('30'), Text('Tue')],
                ),
              ),
              Container(
                margin: EdgeInsets.all(context.pch(1)),
                width: context.pcw(10),
                color: Colors.white,
              ),
              Container(
                margin: EdgeInsets.all(context.pch(1)),
                width: context.pcw(10),
                color: Colors.white,
              ),
              Container(
                margin: EdgeInsets.all(context.pch(1)),
                width: context.pcw(10),
                color: Colors.white,
              ),
              Container(
                margin: EdgeInsets.all(context.pch(1)),
                width: context.pcw(10),
                color: Colors.white,
              ),
              Container(
                margin: EdgeInsets.all(context.pch(1)),
                width: context.pcw(10),
                color: Colors.white,
              ),
              Container(
                margin: EdgeInsets.all(context.pch(1)),
                width: context.pcw(10),
                color: Colors.white,
              ),
            ],
          )),
      child2: Center(
        child: Text('OLALA!!'),
      ),
    );
  }
}
