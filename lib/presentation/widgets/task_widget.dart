// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todo_draft/constants.dart';

class TaskWidget extends StatefulWidget {
  const TaskWidget({super.key});

  @override
  State<TaskWidget> createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          color: kColorMint2),
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: [
          Checkbox(
            value: false,
            onChanged: (status){},
            activeColor: kColorBlue1,
          ),
          Expanded(
              child: Text(
            "This is the example",
            style: kTextStyle,
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
