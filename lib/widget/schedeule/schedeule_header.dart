import 'package:dashboard_timeline_ui_demo/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:dashboard_timeline_ui_demo/widget/shared/day_card.dart';
import 'package:dashboard_timeline_ui_demo/model/day_model.dart';
import 'package:dashboard_timeline_ui_demo/extension/context_extension.dart';

class SchedeuleHeader extends StatelessWidget {
  const SchedeuleHeader({
    Key key,
    @required this.day,
  }) : super(key: key);

  final Day day;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(context.pch(1.5)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            DayCard(day: day),
            Text(
              'TODAY LIST',
              style: TextStyle(
                color: white,
                fontSize: context.pcw(4),
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '${day.tasks.length} TASKS',
              style: TextStyle(
                color: white,
                fontSize: context.pcw(3),
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ));
  }
}
