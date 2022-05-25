import 'package:flutter/material.dart';
import 'package:task_app/constant/colors.dart';
import 'package:task_app/model/task.dart';

List<Task> tasks = [
  Task(
    iconData: Icons.person_rounded,
    title: "Personal",
    bgColor: yellowLight,
    iconColor: yellowDark,
    btnColor: yellow,
    left: 3,
    done: 1,
  ),
  Task(
      iconData: Icons.cases_rounded,
      title: "Work",
      bgColor: redLight,
      iconColor: redDark,
      btnColor: red,
      left: 0,
      done: 0,
  ),
  Task(
      iconData: Icons.favorite_rounded,
      title: "Health",
      bgColor: blueLight,
      iconColor: blueDark,
      btnColor: blue,
      left: 0,
      done: 0,
  ),
  Task(isLast: true),
];