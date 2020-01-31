import 'package:flutter/material.dart';
import 'package:todoapp0130/widgets/task_tile.dart';
import 'package:todoapp0130/models/task.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {

  List<Task> tasks =[
    Task(name: '우유사기'),
    Task(name: '빵사기'),
    Task(name: '과자사기'),
      ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TaskTile(),
        TaskTile(),
        TaskTile(),
      ],
    );
  }
}