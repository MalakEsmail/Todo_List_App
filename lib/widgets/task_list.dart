import 'package:flutter/material.dart';
import 'package:todo_list_app/widgets/task_title.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TaskTitle(),
        TaskTitle(),
      ],
    );
  }
}
