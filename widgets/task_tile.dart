// ignore_for_file: camel_case_types, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool ischecked;
  final String taskTitle;
  final void Function(bool?) checkBoxChange;
    final void Function() listTileDelete;

  TaskTile(
      {required this.ischecked,
      required this.taskTitle,
      required this.checkBoxChange,
      required this.listTileDelete
      });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
            decoration: ischecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.teal[400],
        value: ischecked,
        onChanged: checkBoxChange,
      ),
      onLongPress: listTileDelete,
    );
  }
}
