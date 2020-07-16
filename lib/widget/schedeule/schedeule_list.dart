import 'package:flutter/material.dart';
import 'package:dashboard_timeline_ui_demo/model/task_model.dart';
import 'package:dashboard_timeline_ui_demo/widget/schedeule/timeline_item.dart';

class SchedeuleList extends StatelessWidget {
  const SchedeuleList({
    Key key,
    @required this.tasks,
  }) : super(key: key);

  final List<Task> tasks;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        final _task = tasks[index];
        return TimelineItem(task: _task);
      },
    );
  }
}
