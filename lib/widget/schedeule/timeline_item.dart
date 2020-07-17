import 'package:dashboard_timeline_ui_demo/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:dashboard_timeline_ui_demo/widget/schedeule/task_card.dart';
import 'package:dashboard_timeline_ui_demo/model/task_model.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TimelineItem extends StatelessWidget {
  const TimelineItem({
    Key key,
    this.task,
  }) : super(key: key);

  final Task task;

  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      alignment: TimelineAlign.manual,
      hasIndicator: task.currentTime,
      lineX: 0.2,
      topLineStyle: lineStyle,
      bottomLineStyle: lineStyle,
      indicatorStyle: indicatorStyle,
      rightChild: TaskCard(task: task),
      leftChild: Center(
        child: Text(task.time),
      ),
    );
  }
}
