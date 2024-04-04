// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:todo_draft/data/models/task.dart';

class TaskList {
  final List<Task> taskList;
  TaskList({
    required this.taskList,
  });

  void addTask(Task task) {
    taskList.insert(0, task);
  }

  
}
