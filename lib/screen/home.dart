import 'package:flutter/material.dart';
import 'package:task_app/screen/home_app_bar.dart';

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
      body: Center(
        child: Text("Home Screen"),
      )
    );
  }
}
