import 'package:dashboard_timeline_ui_demo/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:dashboard_timeline_ui_demo/model/task_model.dart';
import 'package:dashboard_timeline_ui_demo/extension/context_extension.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({
    Key key,
    @required this.task,
  }) : super(key: key);

  final Task task;

  @override
  Widget build(BuildContext context) {
    final _iconData = task.done
        ? Icons.check
        : task.notificable
            ? Icons.notifications_active
            : Icons.notifications_none;
    return Container(
      constraints: BoxConstraints(
        minHeight: context.pch(20),
      ),
      width: context.pcw(3),
      decoration: BoxDecoration(
          color: accentLight,
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          )),
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _TaskCardRow(text: task.title, iconData: _iconData),
          const Divider(
            height: 10,
            thickness: 2,
          ),
          _TaskCardRow(text: task.description, iconData: Icons.more_horiz)
        ],
      ),
    );
  }
}

class _TaskCardRow extends StatelessWidget {
  const _TaskCardRow({Key key, @required this.text, @required this.iconData})
      : super(key: key);

  final String text;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[Text(text), Icon(iconData)],
    );
  }
}
