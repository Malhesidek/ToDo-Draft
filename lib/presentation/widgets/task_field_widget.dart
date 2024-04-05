// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:todo_draft/constants.dart';

class TaskFieldWidget extends StatefulWidget {
  const TaskFieldWidget({super.key});

  @override
  State<TaskFieldWidget> createState() => _TaskFieldWidgetState();
}

class _TaskFieldWidgetState extends State<TaskFieldWidget> {
  @override
  Widget build(BuildContext context) {
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
          )),
          IconButton(
              onPressed: () {
                //TODO add function from taskList BLOC
              },
              icon: Icon(Icons.send))
        ],
      ),
    );
  }
}
