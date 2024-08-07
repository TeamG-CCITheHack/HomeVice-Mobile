class ScheduleTaskModel {
  final String date;
  final List<Task> tasks;

  ScheduleTaskModel({
    required this.date,
    required this.tasks,
  });

  int get numberOfTasks => tasks.length;
}

class Task {
  final String image;
  final String name;
  final String type;
  final String date;
  final bool status;

  Task({
    required this.image,
    required this.name,
    required this.type,
    required this.date,
    required this.status,
  });
}
