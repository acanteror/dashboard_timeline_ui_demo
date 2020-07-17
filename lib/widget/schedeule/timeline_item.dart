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
    final _lineStyle = LineStyle(color: Colors.black26, width: 2);
    final _indicatorStyle = IndicatorStyle(width: 12, color: Colors.orange);
    return TimelineTile(
      alignment: TimelineAlign.manual,
      hasIndicator: task.currentTime,
      lineX: 0.2,
      topLineStyle: _lineStyle,
      bottomLineStyle: _lineStyle,
      indicatorStyle: _indicatorStyle,
      rightChild: TaskCard(task: task),
      leftChild: Center(
        child: Text(task.time),
      ),
    );
  }
}
