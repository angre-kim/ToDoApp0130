import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  Widget build(BuildContext context) {
    return ListTile(
      title: Text('할일 1'),
      trailing: TaskCheckbox(),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool checkboxState;
  TaskCheckbox({this.checkboxState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlue,
      value: checkboxState,
      onChanged: (newValue) {
//        setState(() {});
//        isChecked = newValue;
      },
    );
  }
}
