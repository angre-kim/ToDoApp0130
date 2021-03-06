import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:todoapp0130/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: '우유사기'),
    Task(name: '빵사기'),
    Task(name: '과자사기'),
  ];
  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTaskTitle) {
    final task = Task(name: newTaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void upDateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }


  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }
}
