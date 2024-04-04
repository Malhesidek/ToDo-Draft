import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:todo_draft/data/models/task.dart';

part 'task_event.dart';
part 'task_state.dart';

class TaskBloc extends Bloc<TaskEvent, TaskState> {
  TaskBloc() : super(TaskState(task: Task(name: "Task", isActive: true))) {
    on<TaskCompletedPressedEvent>((event, emit) {
      state.toggleStatus();
      emit(TaskState(task: state.task));
    });

    on<TaskUnCompletedPressedEvent>((event, emit) {
      state.toggleStatus();
      emit(TaskState(task: state.task));
    });
  }
}
