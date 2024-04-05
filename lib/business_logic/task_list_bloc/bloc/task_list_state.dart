// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'task_list_bloc.dart';

abstract class TaskListState {}

class TaskListEmptyState extends TaskListState {
  List<Task> taskList = List<Task>.empty();
  TaskListEmptyState() {
    this.taskList = List<Task>.empty();
  }

  List<Task> getTaskList() {
    return taskList;
  }
}

class TaskListChangedState extends TaskListState {
  List<Task> taskList;
  TaskListChangedState({
    required this.taskList,
  });

  void addTask(Task task) {
    taskList.insert(0, task);
  }
}

class TaskListLoadingState extends TaskListState {}
