import 'package:flutter/material.dart';
import 'package:dashboard_timeline_ui_demo/data/fake.dart';
import 'package:dashboard_timeline_ui_demo/page/schedeule_page.dart';
import 'package:dashboard_timeline_ui_demo/widget/shared/day_card.dart';
import 'package:dashboard_timeline_ui_demo/extension/context_extension.dart';

class DayList extends StatelessWidget {
  const DayList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(context.pch(1.5)),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: data.length,
        itemBuilder: (context, index) {
          final _day = data[index];
          return DayCard(
            day: _day,
            onPress: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SchedeulePage(day: _day),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
