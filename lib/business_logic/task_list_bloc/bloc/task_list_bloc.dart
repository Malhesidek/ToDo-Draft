import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:todo_draft/data/models/task.dart';

part 'task_list_event.dart';
part 'task_list_state.dart';

class TaskListBloc extends Bloc<TaskListEvent, TaskListState> {
  TaskListBloc() : super(TaskListEmptyState()) {
    on<TaskListAddedTaskEvent>((event, emit) {
      // Отримуємо поточний стан
      final currentState = state;

      if (currentState is TaskListChangedState) {
        // Створюємо новий стан зі списком завдань, який включає нове завдання
        final List<Task> updatedTaskList = List.from(currentState.taskList)..insert(0, event.task);
        emit(TaskListChangedState(taskList: updatedTaskList));
      } else {
        // Якщо поточний стан не є TaskListChangedState, просто додаємо нове завдання до порожнього списку
        emit(TaskListChangedState(taskList: [event.task]));
      }
    });
  }
}
