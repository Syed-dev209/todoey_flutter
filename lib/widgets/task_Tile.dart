import 'package:flutter/material.dart';
import 'package:todoeyflutter/models/task_data.dart';
import 'package:provider/provider.dart';


class TaskTile extends StatelessWidget {

  final bool isChecked;
  final String title;
  final Function checkBoxState;
  final Function deleteTask;
  TaskTile({this.isChecked,this.title,this.checkBoxState,this.deleteTask});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title,
      style: TextStyle(
        decoration: isChecked? TextDecoration.lineThrough:null
      ),
      ),
      trailing:Checkbox(
        value: isChecked,
        activeColor: Colors.lightBlueAccent,
        onChanged: checkBoxState,

      ),
      onLongPress:deleteTask,
    );
  }
}


