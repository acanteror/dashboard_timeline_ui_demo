import 'package:dashboard_timeline_ui_demo/data/fake.dart';
import 'package:flutter/material.dart';
import 'package:dashboard_timeline_ui_demo/model/day_model.dart';
import 'package:dashboard_timeline_ui_demo/extension/context_extension.dart';

class DayCard extends StatelessWidget {
  const DayCard({
    Key key,
    @required this.day,
  }) : super(key: key);

  final Day day;

  @override
  Widget build(BuildContext context) {
    print(day.currentDay);
    final fontColor = day.currentDay ? Colors.white : Colors.black;
    final backColor = day.currentDay ? Colors.orange : Colors.white;
    return Container(
      decoration: BoxDecoration(
          color: backColor,
          border: Border.all(color: backColor),
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
                color: fontColor,
                fontWeight: FontWeight.bold,
                fontSize: context.pcw(6)),
          ),
          Text(
            day.weekDay.toUpperCase(),
            style: TextStyle(
                color: fontColor,
                fontWeight: FontWeight.bold,
                fontSize: context.pcw(2.8)),
          ),
        ],
      ),
    );
  }
}
