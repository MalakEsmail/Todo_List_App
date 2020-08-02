import 'package:flutter/material.dart';
import 'package:todo_list_app/widgets/task_title.dart';
import 'task_title.dart';
import 'package:todo_list_app/models/task.dart';

class TasksList extends StatefulWidget {
  final List<Task> tasks;
  TasksList(this.tasks);

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
//  List<Task> tasks = [
//    Task(name: 'buy fish'),
//    Task(name: 'buy drugs'),
//    Task(name: 'eat'),
//  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTitle(
          isChecked: widget.tasks[index].isDone,
          taskTitle: widget.tasks[index].name,
          checkBoxCallBack: (checkBoxState) {
            setState(() {
              widget.tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: widget.tasks.length,
    );
//      (
//      children: <Widget>[
//        TaskTitle(
//          isChecked: tasks[0].isDone,
//          taskTitle: tasks[0].name,
//        ),
//        TaskTitle(
//          isChecked: tasks[1].isDone,
//          taskTitle: tasks[1].name,
//        ),
//      ],
//    );
  }
}
