import 'package:dashboard_timeline_ui_demo/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:dashboard_timeline_ui_demo/model/day_model.dart';
import 'package:dashboard_timeline_ui_demo/extension/context_extension.dart';

typedef void OnPress();

class DayCard extends StatelessWidget {
  const DayCard({
    Key key,
    @required this.day,
    this.onPress,
  }) : super(key: key);

  final Day day;
  final OnPress onPress;

  @override
  Widget build(BuildContext context) {
    final _fontColor = day.currentDay ? white : black;
    final _backColor = day.currentDay ? accent : white;
    return GestureDetector(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
            color: _backColor,
            border: Border.all(color: _backColor),
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            )),
        margin: EdgeInsets.all(context.pch(.5)),
        padding: EdgeInsets.all(context.pch(.5)),
        width: context.pcw(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              day.monthNumber.toString(),
              style: TextStyle(
                  color: _fontColor,
                  fontWeight: FontWeight.bold,
                  fontSize: context.pcw(6)),
            ),
            Text(
              day.weekDay.toUpperCase(),
              style: TextStyle(
                  color: _fontColor,
                  fontWeight: FontWeight.bold,
                  fontSize: context.pcw(2.8)),
            ),
          ],
        ),
      ),
    );
  }
}
