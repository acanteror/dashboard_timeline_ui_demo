import 'package:dashboard_timeline_ui_demo/model/task_model.dart';

class Day {
  final int monthNumber;
  final String weekDay;
  final List<Task> tasks;
  final bool currentDay;

  const Day({this.monthNumber, this.weekDay, this.tasks, currentDay})
      : currentDay = currentDay ?? false;
}
