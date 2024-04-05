// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_draft/business_logic/task_list_bloc/bloc/task_list_bloc.dart';
import 'package:todo_draft/constants.dart';
import 'package:todo_draft/data/models/task.dart';
import 'package:todo_draft/presentation/widgets/task_field_widget.dart';
import 'package:todo_draft/presentation/widgets/task_widget.dart';

void main() {
  runApp(const ToDoDraftApp());
}

class ToDoDraftApp extends StatefulWidget {
  const ToDoDraftApp({super.key});

  @override
  State<ToDoDraftApp> createState() => _ToDoDraftAppState();
}

class _ToDoDraftAppState extends State<ToDoDraftApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: MainPage(),
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    final taskListBloc = TaskListBloc();
    return BlocProvider(
      create: (context) => taskListBloc,
      child: Scaffold(
        appBar: AppBar(
          title: kTitleApp,
          centerTitle: true,
          backgroundColor: kColorBlue1,
        ),
        body: Container(
          child: BlocBuilder<TaskListBloc, TaskListState>(
            builder: (context, state) {
              return Column(
                      children: [
                        TaskFieldWidget(),
                        if (state is TaskListEmptyState) Text("No tasks for now")
                        else if (state is TaskListChangedState) for (var task in state.taskList) TaskWidget(task: task)
                      ],
                    );
            },
          ),
        ),
      ),
    );
  }
}
