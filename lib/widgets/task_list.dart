import 'package:flutter/material.dart';
import 'package:todo_list_app/widgets/task_title.dart';
import 'task_title.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_app/models/task_data.dart';
import 'package:todo_list_app/models/task.dart';

class TasksList extends StatelessWidget {
//  List<Task> tasks = [
//    Task(name: 'buy fish'),
//    Task(name: 'buy drugs'),
//    Task(name: 'eat'),
//  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTitle(
              isChecked: task.isDone,
              taskTitle: task.name,
              checkBoxCallBack: (checkBoxState) {
                taskData.updateTask(task);
              },
              longPressCallBack: () {
                taskData.deleteTask(task);
              },
            );
          },
          itemCount: Provider.of<TaskData>(context).tasks.length,
        );
      },
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
