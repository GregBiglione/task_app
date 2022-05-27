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
    description: [
      {
        "time": "9:00 am",
        "title": "Go for a walk with the dog",
        "slot": "9:00 - 10:00 am",
        "timelineTileColor": redDark,
        "bgColor": redLight,
      },
      {
        "time": "10:00 am",
        "title": "Go to the gym",
        "slot": "10:00 - 12:00 am",
        "timelineTileColor": blueDark,
        "bgColor": blueLight,
      },
      {
        "time": "11:00 am",
        "title": "",
        "slot": "",
        "timelineTileColor": blueDark,
      },
      {
        "time": "12:00 am",
        "title": "",
        "slot": "",
        "timelineTileColor": Colors.grey.withOpacity(0.3),
      },
      {
        "time": "1:00 pm",
        "title": "Call with client",
        "slot": "1:00 - 2:00 pm",
        "timelineTileColor": yellowDark,
        "bgColor": yellowLight,
      },
      {
        "time": "2:00 pm",
        "title": "",
        "slot": "",
        "timelineTileColor": Colors.grey.withOpacity(0.3),
      },
      {
        "time": "3:00 pm",
        "title": "",
        "slot": "",
        "timelineTileColor": Colors.grey.withOpacity(0.3),
      }
    ]
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