import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:todo_draft/data/models/task.dart';

part 'task_list_event.dart';
part 'task_list_state.dart';

class TaskListBloc extends Bloc<TaskListEvent, TaskListState> {
  TaskListBloc() : super(TaskListEmptyState()) {
    on<TaskListAddedTaskEvent>((event, emit) {
      var copiedTaskList;
      if (state is TaskListEmptyState) {
        TaskListEmptyState emptyState = state as TaskListEmptyState;
        List<Task> copiedTaskList = List<Task>.from(emptyState.taskList);
        // Використовуйте скопійовані дані copiedTaskList
      } else if (state is TaskListChangedState) {
        TaskListChangedState changedState = state as TaskListChangedState;
        List<Task> copiedTaskList = List<Task>.from(changedState.taskList);
        // Використовуйте скопійовані дані copiedTaskList
      }
      emit(TaskListChangedState(taskList: copiedTaskList));
    });
  }
}
