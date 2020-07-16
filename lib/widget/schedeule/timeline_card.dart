import 'package:dashboard_timeline_ui_demo/model/task_model.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';
import 'package:dashboard_timeline_ui_demo/extension/context_extension.dart';

class TimelineCard extends StatelessWidget {
  const TimelineCard({
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
      rightChild: Container(
        constraints: BoxConstraints(
          minHeight: context.pch(20),
        ),
        child: Container(
          width: context.pcw(3),
          decoration: BoxDecoration(
              color: Colors.orange[100],
              border: Border.all(color: Colors.orange[100]),
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              )),
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    task.title,
                  ),
                  task.done
                      ? Icon(Icons.check)
                      : task.notificable
                          ? Icon(Icons.notifications_active)
                          : Icon(Icons.notifications_none)
                ],
              ),
              Divider(
                height: 10,
                thickness: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(task.description),
                  Icon(Icons.more_horiz)
                ],
              ),
            ],
          ),
        ),
      ),
      leftChild: Center(
        child: Text(task.time),
      ),
    );
  }
}
