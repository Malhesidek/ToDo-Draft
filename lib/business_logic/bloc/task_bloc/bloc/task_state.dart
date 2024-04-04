// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'task_bloc.dart';

class TaskState {
  final Task task;
  TaskState({
    required this.task,
  });

  void toggleStatus() {
    task.isActive = !task.isActive;
  }
}

// class TaskInitialState extends TaskState {
//   final Task task;
//   TaskInitialState({
//     required this.task,
//   });
// }

// class TaskLoadingState extends TaskState {}

// class TaskIncompleteState extends TaskState {
//   final Task task;
//   TaskIncompleteState({
//     required this.task,
//   });
// }

// class TaskCompleteState extends TaskState {
//   final Task task;
//   TaskCompleteState({
//     required this.task,
//   });
// }
