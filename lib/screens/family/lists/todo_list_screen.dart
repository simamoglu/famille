import 'package:flutter/material.dart';

class ToDoListScreen extends StatelessWidget {
  const ToDoListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: const [
          Text('To-Do List'),
        ],
      ),
    );
  }
}
