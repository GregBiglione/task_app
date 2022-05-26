import 'package:flutter/material.dart';

class CentralFloatingActionButton extends StatelessWidget {
  const CentralFloatingActionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.black,
        child: Icon(
          Icons.add,
          size: 35,
        ),
    );
  }
}
