import 'package:flutter/material.dart';
import 'package:task_app/screen/home_app_bar.dart';
import 'package:task_app/widget/bottom_navigation_menu.dart';
import 'package:task_app/widget/go_premium.dart';
import 'package:task_app/widget/task_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: HomeAppBar(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GoPremium(),
          Container(
            padding: EdgeInsets.all(15),
            child: Text(
              "Tasks",
              style: TextStyle(
                fontSize:22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
              child: TaskList()
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationMenu(),
    );
  }
}
