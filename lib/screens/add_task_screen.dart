import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todoeyflutter/models/task.dart';
import 'TaskScreen.dart';
import 'package:provider/provider.dart';
import 'package:todoeyflutter/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
//  final Function callBack;
 String taskTitle;
//  AddTaskScreen(this.callBack);
  @override
  Widget build(BuildContext context) {
    return Container(

        color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(30.0),
        decoration:BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topRight: Radius.circular(20.0),topLeft: Radius.circular(20.0))
        ) ,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text('Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.lightBlueAccent,
              fontSize: 30.0,
              fontWeight: FontWeight.w500
            ),),
            TextFormField(
              autofocus: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(),
              onChanged: (newValue){
                taskTitle=newValue;
              },
            ),
            SizedBox(height: 15.0,),
            FlatButton(
              color: Colors.lightBlueAccent,
              child: Text('Add',
              style: TextStyle(color: Colors.white,
              fontSize: 20.0),),
              onPressed: ()
              {
                Provider.of<TaskData>(context,listen: false).addTask(taskTitle);
                Navigator.pop(context);
              },
            )
          ],
        ),
    ),
    ) ;
  }
}
