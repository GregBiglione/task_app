import 'package:flutter/material.dart';
import 'package:task_app/model/task.dart';
import 'package:task_app/model/task.dart';

class Detail extends StatelessWidget {
  final Task task;
  const Detail({Key? key, required this.task}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Detail"),
      ),
    );
  }
}
