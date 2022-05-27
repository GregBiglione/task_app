import 'package:flutter/material.dart';
import 'package:task_app/model/task.dart';
import 'package:task_app/utils/date_picker.dart';
import 'package:task_app/widget/detail_task_title.dart';
import 'package:task_app/widget/task_timeline.dart';

class CustomScrollViewDetail extends StatelessWidget {
  final Task task;
  const CustomScrollViewDetail({Key? key, required this.task}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final detailList = task.description;

    return CustomScrollView(
      slivers: [
        _buildSliver(context),
        SliverToBoxAdapter(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DatePicker(),
                DetailTaskTitle(),
              ],
            ),
          ),
        ),
        detailList == null ?
        SliverFillRemaining(
          child: Container(
            color: Colors.white,
            child: Center(
              child: Text(
                "No task today",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ):
        SliverList(
            delegate: SliverChildBuilderDelegate(
                    (_, index) => TaskTimeline(detail: detailList[index]),
                    childCount: detailList.length,
            ),
        ),
      ],
    );
  }

  Widget _buildSliver(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 90,
      backgroundColor: Colors.black,
      leading: IconButton(
        onPressed: () => Navigator.of(context).pop(),
        icon: Icon(Icons.arrow_back_ios),
        iconSize: 20,
      ),
      actions: [
        Icon(
          Icons.more_vert,
          size: 40,
        ),
      ],
      flexibleSpace: FlexibleSpaceBar(
        title: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "${task.title} tasks",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5),
            Text(
              "You have ${task.left} tasks for today",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
                color: Colors.grey[700],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
