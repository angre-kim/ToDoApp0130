import 'package:flutter/foundation.dart';
import 'package:todoapp0130/models/task.dart';

class TaskData extends ChangeNotifier {

  List<Task> tasks =[
    Task(name: '우유사기'),
    Task(name: '빵사기'),
    Task(name: '과자사기'),
  ];
}