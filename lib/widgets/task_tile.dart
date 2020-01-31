import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('할일 1'),
      trailing: TaskCheckbox(),
    );
  }
}

class TaskCheckbox extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Checkbox(
        activeColor: Colors.lightBlue,
        value: false);
  }
}