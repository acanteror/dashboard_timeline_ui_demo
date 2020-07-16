class Task {
  final String title;
  final String description;
  final bool notificable;
  final bool done;
  final String time;
  final bool currentTime;

  const Task(
      {this.title,
      this.description,
      this.notificable,
      this.done,
      this.time,
      currentTime})
      : currentTime = currentTime ?? false;
}
