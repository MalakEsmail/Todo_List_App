import 'package:flutter/material.dart';

class TaskTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('this is task .'),
      trailing: Checkbox(
        value: false,
      ),
    );
  }
}
