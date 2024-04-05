// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'task_list_bloc.dart';

abstract class TaskListEvent {}

class TaskListAddedTaskEvent extends TaskListEvent {
  final Task task;
  TaskListAddedTaskEvent({
    required this.task,
  });
}
