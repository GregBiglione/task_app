import 'package:flutter/material.dart';
import 'package:task_app/model/task.dart';
import 'package:task_app/model/task.dart';
import 'package:task_app/widget/custom_scrollview_detail.dart';

class Detail extends StatelessWidget {
  final Task task;
  const Detail({Key? key, required this.task}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollViewDetail(task: task),
    );
  }
}
