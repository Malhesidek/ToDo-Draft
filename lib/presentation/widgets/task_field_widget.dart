// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_draft/business_logic/task_list_bloc/bloc/task_list_bloc.dart';
import 'package:todo_draft/constants.dart';
import 'package:todo_draft/data/models/task.dart';

class TaskFieldWidget extends StatefulWidget {
  const TaskFieldWidget({super.key});

  @override
  State<TaskFieldWidget> createState() => _TaskFieldWidgetState();
}

class _TaskFieldWidgetState extends State<TaskFieldWidget> {
  String? taskName;
  @override
  Widget build(BuildContext context) {
    final taskListBloc = BlocProvider.of<TaskListBloc>(context);
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          color: kColorBlue2),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Row(
        children: [
          Expanded(
              child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter your task",
                contentPadding: EdgeInsets.all(8)),
            onChanged: (text) {
              setState(() {
                taskName = text;
              });
            },
          )),
          IconButton(
              onPressed: taskName != null && taskName!.isNotEmpty ? () {
                taskListBloc.add(TaskListAddedTaskEvent(
                    task: Task(name: taskName!, isActive: false)));
              } : null,
              icon: Icon(Icons.send))
        ],
      ),
    );
  }
}
