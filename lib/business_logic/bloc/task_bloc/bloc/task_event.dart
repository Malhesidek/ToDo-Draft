part of 'task_bloc.dart';

abstract class TaskEvent {}

class TaskCompletedPressedEvent extends TaskEvent {}

class TaskUnCompletedPressedEvent extends TaskEvent {}
