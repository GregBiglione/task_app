import 'package:flutter/material.dart';
import 'package:task_app/widget/task_grid.dart';

class TaskList extends StatelessWidget {
  const TaskList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TaskGrid();
  }
}
