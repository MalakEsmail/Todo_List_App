import 'package:flutter/material.dart';

class TaskTitle extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final Function checkBoxCallBack;

  TaskTitle({this.isChecked, this.taskTitle, this.checkBoxCallBack});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          taskTitle,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          value: isChecked,
          activeColor: Colors.lightBlueAccent,
          onChanged: checkBoxCallBack,
        ));
  }
}
//(bool checkBoxState) {
//setState(() {
//isChecked = checkBoxState;
//});
//}

//class TaskCheckBox extends StatelessWidget {
//  final bool checkBoxState;
//  final Function toggleCheckBosState;
//
//  TaskCheckBox(this.checkBoxState, this.toggleCheckBosState);
//
//  @override
//  Widget build(BuildContext context) {
//    return Checkbox(
//      value: checkBoxState,
//      activeColor: Colors.lightBlueAccent,
//      onChanged: toggleCheckBosState,
//    );
//  }
//}
