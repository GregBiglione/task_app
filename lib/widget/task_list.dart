import 'package:flutter/material.dart';
import 'package:task_app/model/task.dart';

class TaskList extends StatelessWidget {
  final tasks = Task.generateTasks();
  //const TaskList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text("Tasks list");
  }
}
