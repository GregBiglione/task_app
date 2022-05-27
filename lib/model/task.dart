import 'package:flutter/material.dart';
import 'package:task_app/model/data_task.dart' as data;

class Task {
  IconData? iconData;
  String? title;
  Color? bgColor;
  Color? iconColor;
  Color? btnColor;
  num? left;
  num? done;
  List<Map<String, dynamic>>? description;
  bool? isLast;

  Task({
    this.iconData,
    this.title,
    this.bgColor,
    this.iconColor,
    this.btnColor,
    this.left,
    this.done,
    this.description,
    this.isLast = false
  });

  static List<Task> generateTasks(){
    return data.tasks;
  }
}