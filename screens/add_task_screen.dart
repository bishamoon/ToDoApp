// ignore_for_file: prefer_const_constructors, sort_child_properties_last
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import '../models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallBack;

  const AddTaskScreen(this.addTaskCallBack);

  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 40,
                color: Colors.teal[600],
                fontWeight: FontWeight.bold),
          ),
          TextField(
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (newText) {
              newTaskTitle = newText;
            },
          ),
          SizedBox(height: 30),
          TextButton(
            onPressed: () {
              Provider.of<TaskData>(context, listen: false)
                  .addTask(newTaskTitle!);
              Navigator.pop(context);
            },
            child: Text(
              'Add',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
            style: TextButton.styleFrom(
              backgroundColor: Colors.teal[500],
              primary: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
