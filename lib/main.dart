import 'package:flutter/material.dart';
import 'package:todo_list_app/models/task_data.dart';
import 'package:todo_list_app/screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'package:todo_list_app/models/task.dart';
import 'package:todo_list_app/models/task_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String data = 'Top Secret Data';

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
