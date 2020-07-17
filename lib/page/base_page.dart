import 'package:flutter/material.dart';
import 'package:dashboard_timeline_ui_demo/extension/context_extension.dart';

class BasePage extends StatelessWidget {
  BasePage({
    Key key,
    this.title,
    this.actions,
    this.childTop,
    this.childBody,
  }) : super(key: key);
  final String title;
  final Widget childTop;
  final Widget childBody;
  final List<Widget> actions;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      top: false,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.blueGrey,
              Colors.blue[300],
            ],
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              iconTheme: IconThemeData(color: Colors.white),
              title: Text(
                title.toUpperCase(),
                style: Theme.of(context).textTheme.headline5.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                    ),
              ),
              actionsIconTheme: IconThemeData(color: Colors.white),
              actions: actions),
          body: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: context.pch(12),
                  child: childTop,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        )),
                    child: childBody,
                  ),
                )
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.orange,
            child: Icon(Icons.add, color: Colors.white),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
