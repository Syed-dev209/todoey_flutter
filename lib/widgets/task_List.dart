import 'package:flutter/material.dart';
import 'Task_Tile.dart';
import 'package:todoeyflutter/models/task.dart';
import 'package:provider/provider.dart';
import 'package:todoeyflutter/models/task_data.dart';
class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Consumer<TaskData>(
      builder: (context,taskData, child){

        return ListView.builder(itemBuilder:(context,index) {
           return TaskTile(
            title: taskData.tasks[index].name,
            isChecked: taskData.tasks[index].isDone,
            checkBoxState: (checkState) {
              taskData.updateTask(taskData.tasks[index]);
            },
            deleteTask:(){
              taskData.deleteTask(index);
             }

          );
        },

          itemCount: taskData.taskCount,
        );
      },


    );
  }
}

