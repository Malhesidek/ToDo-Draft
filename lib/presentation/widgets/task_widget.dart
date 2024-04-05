// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todo_draft/constants.dart';
import 'package:todo_draft/data/models/task.dart';

class TaskWidget extends StatefulWidget {
  final Task task;

  const TaskWidget({super.key, required this.task});

  @override
  State<TaskWidget> createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4, vertical: 4),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          color: kColorMint2),
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: [
          Checkbox(
            value: widget.task.isActive,
            onChanged: (status) {
              setState(() {
                widget.task.toggleStatus();
              });
            },
            activeColor: kColorBlue1,
          ),
          Expanded(
              child: Text(
            widget.task.name,
            style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                decoration: widget.task.isActive ? TextDecoration.lineThrough : TextDecoration.none),
            textAlign: TextAlign.center,
          )),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.close),
            color: kColorBlue1,
          )
        ],
      ),
    );
  }
}
